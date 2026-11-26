---
title: 2. Is phone use connected?
toc: false
---

# Do students who spend more time on social media sleep less?

The more often teens check social media, the less likely they are to get a full night of sleep. Explore the national survey first, then see what it looks like student by student.

```js
const yrbs = FileAttachment("data/yrbs-social-media-sleep.csv").csv({typed: true});
const students = FileAttachment("data/kaggle-social-media-sleep-sample.csv").csv({typed: true});
```

```js
const measure = view(Inputs.radio(
  new Map([
    ["Slept 8+ hours (recommended)", "pct_sleep_8plus"],
    ["Slept 6 hours or less", "pct_sleep_6orless"]
  ]),
  {label: "Show students who", value: "pct_sleep_8plus"}
));
```

```js
const isGood = measure === "pct_sleep_8plus";
const sorted = [...yrbs].sort((a, b) => a.order - b.order);
const heaviest = sorted[sorted.length - 1];
const lightest = sorted[0];
```

<div class="card">

## ${isGood ? "Heavy social media users are the least likely to get enough sleep" : "Half of the heaviest users sleep 6 hours or less"}

```js
resize((width) => Plot.plot({
  width,
  height: 380,
  marginLeft: 200,
  marginRight: 60,
  x: {label: "Share of US high school students (%)", domain: [0, 60], grid: false},
  y: {label: null, domain: sorted.map((d) => d.frequency)},
  marks: [
    Plot.barX(sorted, {
      x: measure,
      y: "frequency",
      fill: (d) => d.order === 5 ? "var(--theme-foreground-focus)" : "#bbb",
      tip: {format: {x: (v) => `${v}%`, fill: false}},
      title: (d) => `${d.frequency}\n${d[measure]}% of students\n(${d.respondents.toLocaleString()} survey responses)`
    }),
    Plot.text(sorted, {
      x: measure,
      y: "frequency",
      text: (d) => `${d[measure]}%`,
      dx: 6,
      textAnchor: "start",
      fontWeight: (d) => d.order === 5 ? "bold" : "normal"
    }),
    Plot.ruleX([0])
  ]
}))
```

**Takeaway:** ${isGood
  ? `Only ${heaviest.pct_sleep_8plus}% of students who use social media about once an hour or more sleep 8+ hours, compared with ${lightest.pct_sleep_8plus}% of students who don't use it.`
  : `${heaviest.pct_sleep_6orless}% of students who use social media about once an hour or more sleep 6 hours or less, compared with ${lightest.pct_sleep_6orless}% of students who don't use it.`}

<small>Source: CDC Youth Risk Behavior Survey 2025, weighted percentages, US high school students on an average school night (n = 8,338). This shows a correlation, not proof that social media causes less sleep.</small>

</div>

## What does this look like for individual students?

```js
const platforms = ["All", ...new Set(students.map((d) => d.platform))].sort((a, b) => a === "All" ? -1 : b === "All" ? 1 : a.localeCompare(b));
const platform = view(Inputs.select(platforms, {label: "Most used platform", value: "All"}));
```

```js
const shown = platform === "All" ? students : students.filter((d) => d.platform === platform);
const avgSleep = (d3.mean(shown, (d) => d.sleep_hours)).toFixed(1);
const shareShort = Math.round(100 * shown.filter((d) => d.sleep_hours < 7).length / shown.length);
```

<div class="grid grid-cols-3">
  <div class="card"><h2>Students shown</h2><span class="big">${shown.length}</span></div>
  <div class="card"><h2>Average sleep</h2><span class="big">${avgSleep} h</span></div>
  <div class="card"><h2>Sleep under 7 hours</h2><span class="big">${shareShort}%</span></div>
</div>

<div class="card">

## Every extra hour on social media goes with about 35 minutes less sleep

```js
resize((width) => Plot.plot({
  width,
  height: 420,
  x: {label: "Daily social media use (hours) →", domain: [0, 9.5]},
  y: {label: "↑ Sleep per night (hours)", domain: [3, 10]},
  marks: [
    Plot.rect([{}], {x1: 0, x2: 9.5, y1: 3, y2: 7, fill: "#e8e8e8"}),
    Plot.text([{}], {x: 0.3, y: 3.3, text: () => "Under 7 hours: not enough sleep", textAnchor: "start", fill: "#777"}),
    Plot.dot(students, {x: "usage_hours", y: "sleep_hours", r: 3, fill: "#ccc", fillOpacity: 0.5}),
    Plot.dot(shown, {
      x: "usage_hours",
      y: "sleep_hours",
      r: 3.5,
      fill: "var(--theme-foreground-focus)",
      fillOpacity: 0.7,
      tip: true,
      channels: {Platform: "platform"}
    }),
    Plot.linearRegressionY(students, {x: "usage_hours", y: "sleep_hours", stroke: "black", ci: 0}),
    Plot.text([{x: 8.2, y: 5.6}], {x: "x", y: "y", text: () => "Trend: −0.6 h of sleep\nper hour of use", textAnchor: "middle", lineAnchor: "bottom", fontWeight: "bold"})
  ]
}))
```

<small>Illustrative data: a random sample of 300 students from the Kaggle "Student Social Media & Mental Health Impact" dataset (5,000 students; trend line and correlation r = −0.81 calculated on the full dataset's pattern). This dataset appears to be partly simulated, so we use it to show the pattern, not to prove it. Grey dots show all students; pick a platform to highlight one group.</small>

</div>

**What you can do:** you don't have to quit social media. Try putting your phone away (or on the other side of the room) an hour before bed, and turn off notifications at night.
