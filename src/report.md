---
title: Final Report
toc: true
---

# Phones vs. Sleep: Final Report

This report explains the story behind our dashboard: what we looked at, what we found, and how we designed the charts.

## 1. The issue

Most students are not getting enough sleep. In 2025, only about 1 in 4 US high school students slept 8 or more hours on a school night, which is the amount experts recommend for teens. At the same time, more than a third of students said they use social media almost every hour.

This matters because sleep affects almost everything else in a student's life. Short sleep is linked to worse mental health, lower grades, and more trouble focusing in class. Because it is so common, many students see being tired as normal.

**Our message:** sleep loss among young people has become normal, and heavy phone use often comes with it. The good news is that phone habits are something students can actually change, even if it is not easy.

**Our audience:** high school and university students, who use their phones the most and sleep the least. We also hope parents and school wellness offices can use these findings in conversations and sleep awareness campaigns.

## 2. Data

We used two datasets. Each one has a clear job in our story.

| | CDC Youth Risk Behavior Survey (YRBS) | Kaggle "Student Social Media & Mental Health Impact" |
| --- | --- | --- |
| **Who** | US high school students | About 5,000 students aged roughly 18 to 24, from many countries |
| **What it measures** | Sleep on school nights, social media use, grades, mental health | Daily social media hours, sleep hours, stress, mental health score, platform |
| **How we use it** | Our main evidence for all claims | An illustration that shows individual students |
| **Why we trust it** | Run by the CDC, large national sample, weighted to represent all US high school students | Clear variables at the student level, but no published method |
| **Limits** | Self-reported; some questions change between survey years | Appears partly simulated, so we never use it for a main claim |

**Ethics:** both datasets are public and anonymous, so no student can be identified. We avoid blaming individuals, and we state on every page that our data shows correlation, not causation.

**Sources:**
- [CDC YRBS data and documentation](https://www.cdc.gov/yrbs/data/index.html)
- [Kaggle dataset](https://www.kaggle.com/datasets/shivasingh4945/student-social-media-and-mental-health-impact)

## 3. How big is the problem? (Q1)

### The question

How common is sleep loss among teens, and has it changed over the past ten years? This is the starting point for our story: before asking why students sleep too little, we need to show how many of them do.

### The data we used

- **CDC YRBS 2015–2025** (US high school students): the share of students who sleep 8 or more hours on an average school night, for each survey year (2015, 2017, 2019, 2021, 2023 and 2025). We used the survey's weights, so the percentages represent all US high school students. This is our main evidence.

### What we found

<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>

<div class="grid grid-cols-1">
<tableau-viz id="report-sleep-trends" class="fit-1000" src="https://public.tableau.com/views/Phonesvs_Sleep-TeenSleepTrends/Dashboard1" toolbar="bottom" hide-tabs width="1000" height="827"></tableau-viz>
</div>

<script type="module">
const fitTableau = () => document.querySelectorAll("tableau-viz.fit-1000").forEach((v) => { v.style.zoom = Math.min(1, v.parentElement.clientWidth / 1000); });
fitTableau();
addEventListener("resize", fitTableau);
</script>

- **Most teens don't get enough sleep.** In 2025, only 24.3% of students slept 8+ hours on a school night. That means about 3 in 4 students sleep less than recommended.
- **It got worse before it got better.** The share fell from 27.3% in 2015 to 22.1% in 2019, the lowest point in the series. That is a drop of 5.2 percentage points in four years.
- **The recovery is slow and incomplete.** Since 2019, the share has risen a little each survey: 22.7% in 2021, 23.2% in 2023 and 24.3% in 2025. Even so, it is still below the 2015 level.
- **Short sleep is the norm, not the exception.** In every year we looked at, more than 7 in 10 students slept less than 8 hours.

**Answer:** sleep loss is very common. Most US high school students don't get enough sleep, and this has stayed true for the past ten years.

### How we designed the chart

- **Line chart:** the question is about change over time, and a line makes the drop and the slow recovery easy to see at a glance.
- **Y-axis starts at 0%** so the decline is not exaggerated.
- **Direct labels:** each point shows its value, so viewers don't need to read the axis.
- **One highlighted point:** 2019 is shown as a larger orange dot on a blue line, so the eye goes straight to the lowest point.
- **One annotation** states the main finding ("2019: the lowest point in the series"), so viewers don't have to work it out themselves.
- **Interactivity with a purpose:** one dropdown switches the line between students who sleep 8+ hours and those who sleep under 8 hours, so viewers can see the problem from both sides. A second dropdown lets viewers highlight any survey year, and the orange dot moves to that year. Tooltips show the exact value for each year.
- **Less clutter:** we hid the extra size legend and kept only what helps answer the question (data-ink ratio).

### Limitations

- **Self-reported data.** Students estimate their own sleep, so the numbers may not be exact.
- **The question changed slightly in some years.** In 2015 and 2019, the sleep question was worded a little differently than in other years. Some of the change in those years may come from the wording, not from a real change in sleep.
- **School nights only.** The survey does not measure weekend sleep.
- **US high school students only.** The results may not apply to university students or to students in other countries.
- **Gaps between surveys.** The survey runs every two years, so we can't see what happened in between.
- **Small changes may not be real.** The numbers are estimates with a margin of error, so differences of less than one percentage point, such as 22.7% to 23.2%, may not be meaningful.

## 4. Is phone use connected? (Q2)

### The question

Do students who spend more time on social media sleep less? Page 1 shows that most teens don't get enough sleep. This section checks whether heavy social media use goes along with that.

### The data we used

- **CDC YRBS 2025** (US high school students, 8,338 answers): each student reports how often they use social media and how many hours they sleep on a school night. We used the survey's weights, so the percentages represent all US high school students. This is our main evidence.
- **Kaggle dataset** (sample of 300 out of 5,000 students): daily hours on social media and sleep hours per student. It looks partly simulated, so we use it only to show the pattern at the level of individual students, not as proof.

### What we found

<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>

<div class="grid grid-cols-1">
<tableau-viz id="report-q2-bar" src="https://public.tableau.com/views/PhonesvsSleep-SocialMediaandSleep/CDCbar" toolbar="hidden" hide-tabs width="100%" height="500"></tableau-viz>
</div>

<div class="grid grid-cols-1">
<tableau-viz id="report-q2-scatter" src="https://public.tableau.com/views/PhonesvsSleep-SocialMediaandSleep/Kagglescatter" toolbar="hidden" hide-tabs width="100%" height="600"></tableau-viz>
</div>

- **Heavy users sleep the least.** Only 20% of teens who check social media about once an hour or more sleep 8+ hours, compared with 37% of teens who don't use it.
- **Short sleep is most common among heavy users.** About half (51%) of the heaviest users sleep 6 hours or less, compared with 38% of non-users.
- **The pattern is not perfectly smooth.** Students who use it "about once a day" (32%) sleep enough slightly more often than those who use it "less than once a day" (30%). The clear gap is between the lightest and the heaviest users.
- **Individual students show the same direction.** In the Kaggle sample, almost every student who uses social media 6+ hours a day sleeps under the recommended 7 hours.

**Answer:** yes. The more often students use social media, the less likely they are to get enough sleep.

### How we designed the charts

- **Bar chart for the CDC data:** comparing groups is easiest with bar length. Bars start at 0 so differences are not exaggerated, and each bar has a direct label, so no axis is needed.
- **Scatter plot for the Kaggle data:** one dot per student lets viewers see individuals, not just averages.
- **Consistent color:** red always means "not enough sleep" on both charts. Everything else is grey, so the eye goes straight to the key group.
- **Reference line at 7 hours:** gives viewers a clear benchmark for "enough sleep."
- **Interactivity with a purpose:** a toggle switches the bar chart between enough sleep and short sleep, and a slider highlights students who use social media about as much as the viewer. This helps students find themselves in the data.
- **Less clutter:** we removed extra legends, gridlines, and a platform filter that did not help answer the question (data-ink ratio).

### Limitations

- **Correlation, not causation.** Heavy social media use and short sleep go together, but this data cannot show that one causes the other. Stress or homework, for example, could affect both.
- **The two datasets measure different things.** The CDC measures how often students check social media, while Kaggle measures hours per day. They point the same way but are not directly comparable.
- **Different groups.** The CDC covers US high school students; the Kaggle data covers students aged about 18 to 24 from many countries.
- **The Kaggle data looks partly simulated,** so we do not use it for any main claim.

## 5. Why does it matter? (Q3)

### The question

How is short sleep connected to mental health and grades? Pages 1 and 2 show that many students don't sleep enough and that heavy phone use goes along with it. This section checks what short sleep is linked to.

### The data we used

- **Kaggle dataset** (5,000 students, aged 18 to 24): sleep hours, a self-rated mental health score (out of 10), and daily phone use for each student. It looks partly simulated, so we use it to show the pattern, not as proof.
- **CDC YRBS 2019** (US high school students): the share of students who get 8+ hours of sleep, split by the grades they mostly get. The Kaggle data has no grades, so this is our evidence for the grades part. CDC only publishes these as summary percentages.

### What we found

<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>

<div class="grid grid-cols-1">
<tableau-viz id="report-sleep-mental-health" src="https://public.tableau.com/views/saoude-final-project/Dashboard1" toolbar="bottom" hide-tabs width="100%" height="1050"></tableau-viz>
</div>

- **Less sleep, worse mental health.** The average mental health score rises step by step with sleep: 5.1 for students who sleep under 6 hours, 6.0 for 6–7 hours, 7.1 for 7–8 hours, and 7.6 for 8+ hours.
- **Short sleep is common.** About a third of students (34%) sleep under 6 hours.
- **Phones tie it together.** Among students who use their phone 5+ hours a day, 63% sleep under 6 hours. Among those who use it 1–3 hours a day, almost none do, and their average score is about 8.
- **Better grades, more sleep.** 25% of high schoolers with mostly A's get 8+ hours of sleep, compared with only 14% of students with mostly D's/F's.

**Answer:** short sleep goes along with worse mental health and lower grades, and heavy phone users are the most likely to sleep that little.

### How we designed the charts

- **Bar charts for both questions:** comparing groups is easiest with bar length. Bars start at 0 so differences are not exaggerated.
- **One highlighted bar per chart:** the short-sleep group (under 6 hours) and the lowest-grades group stand out in color; everything else is grey, so the eye goes straight to the key bar.
- **One annotation per chart** states the main finding, so viewers don't have to read every bar.
- **Interactivity with a purpose:** a "daily phone use" filter changes the mental health chart. Each bar is labeled with its share of students, so switching from light to heavy users shows the short-sleep group growing from almost 0% to 63%. This connects phones, sleep, and mental health in one click.

### Limitations

- **Correlation, not causation.** Short sleep, worse mental health, and lower grades go together, but this data cannot show that one causes the other. Stress, for example, could affect sleep and mental health at the same time.
- **Two different groups.** The mental health data covers mostly university students from many countries; the grades data covers US high school students.
- **Grades come from summary data only,** so we can't combine grades with phone use or mental health for the same students.

## 6. Conclusion and what students can do

*To be written by the team: main takeaways and one or two simple actions (for example, putting the phone away an hour before bed).*
