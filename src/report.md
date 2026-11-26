---
title: Final Report
toc: true
---

# Phones vs. Sleep: Final Report

## 1. The issue

*To be written by the team: why sleep loss among students matters and the message we want to share.*

## 2. Data

*To be written by the team: short overview of both datasets (CDC YRBS and Kaggle), what each contains, and why we trust or limit each one.*

## 3. How big is the problem? (Q1)

*To be written by the Q1 owner, following the same structure as Q2 below.*

## 4. Is phone use connected? (Q2)

### The question

Do students who spend more time on social media sleep less? Page 1 shows that most teens don't get enough sleep. This section checks whether heavy social media use goes along with that.

### The data we used

- **CDC YRBS 2025** (US high school students, 8,338 answers): each student reports how often they use social media and how many hours they sleep on a school night. We used the survey's weights, so the percentages represent all US high school students. This is our main evidence.
- **Kaggle dataset** (sample of 300 out of 5,000 students): daily hours on social media and sleep hours per student. It looks partly simulated, so we use it only to show the pattern at the level of individual students, not as proof.

### What we found

<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>

<div class="grid grid-cols-1">
<tableau-viz id="report-social-media-sleep" src="https://public.tableau.com/views/PhonesvsSleep-SocialMediaandSleep/Dashboard1" toolbar="bottom" hide-tabs width="1000" height="827"></tableau-viz>
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

*To be written by the Q3 owner, following the same structure as Q2 above.*

## 6. Conclusion and what students can do

*To be written by the team: main takeaways and one or two simple actions (for example, putting the phone away an hour before bed).*
