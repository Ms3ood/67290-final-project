---
title: 1. How big is the problem?
toc: false
theme: [near-midnight, wide]
---

<article class="sleep-story">
  <header class="story-hero">
    <p class="story-kicker">Research question 1 · Sleep trends</p>
    <h1>Phones vs. Sleep: Teen Sleep Trends</h1>
    <p class="story-subtitle">Are teenagers getting enough sleep?</p>
    <p class="story-intro">Sleep is essential to teenagers’ learning, attention, mood, and overall well-being. To understand whether students are getting enough rest, this analysis uses the CDC’s Youth Risk Behavior Survey (YRBS) to follow the share of high school students reporting eight or more hours of sleep on an average school night.</p>
  </header>

  <aside class="finding-card" aria-labelledby="key-finding-title">
    <p class="finding-label" id="key-finding-title">Key finding</p>
    <p>The proportion of students reporting <strong>eight or more hours of sleep fell from 27.3% in 2015 to 22.1% in 2019.</strong> Although the figure gradually increased afterward, it reached only <strong>24.3% in 2025</strong>, remaining below its 2015 level.</p>
  </aside>

<script type="module" src="https://public.tableau.com/javascripts/api/tableau.embedding.3.latest.min.js"></script>

<div class="grid grid-cols-1">
  <tableau-viz id="tableau-sleep-trends" src="https://public.tableau.com/views/Phonesvs_Sleep-TeenSleepTrends/Dashboard1" toolbar="bottom" hide-tabs width="1000" height="827"></tableau-viz>
</div>

  <section class="story-section" aria-labelledby="trend-heading">
    <p class="section-label">Interpreting the pattern</p>
    <h2 id="trend-heading">What does the trend reveal?</h2>
    <p>The trend shows a pronounced decline in adequate sleep between 2015 and 2019, followed by a gradual but incomplete recovery. The later improvement is encouraging, but the 2025 estimate still does not return to the 2015 level. Across the decade, getting at least eight hours of sleep remained the exception rather than the norm for surveyed students.</p>
    <p class="transition">That incomplete recovery leads to our next research question: how might screen time and social media use be connected to how much sleep teenagers get?</p>
  </section>

  <section class="method-card" aria-labelledby="method-heading">
    <div class="method-heading">
      <p class="section-label">About the analysis</p>
      <h2 id="method-heading">Data and methodology</h2>
    </div>
    <dl class="method-grid">
      <div>
        <dt>Source</dt>
        <dd>CDC Youth Risk Behavior Survey (YRBS), 2015–2025, a national survey of U.S. high school students run every two years.</dd>
      </div>
      <div>
        <dt>Measure</dt>
        <dd>The percentage of students reporting eight or more hours of sleep on an average school night. Use the chart's dropdown to switch to students sleeping under eight hours, or to highlight any survey year.</dd>
      </div>
      <div>
        <dt>Estimates</dt>
        <dd>Survey weights are applied so the estimates represent U.S. high school students. Each figure is an estimate with a margin of error, so small year-to-year changes (under one percentage point) may not be meaningful.</dd>
      </div>
      <div>
        <dt>Limitations</dt>
        <dd>Sleep is self-reported and covers school nights only. In 2015 and 2019 the sleep question was worded slightly differently than in other years, so comparisons involving those years should be read with caution. The surveys are cross-sectional and cover U.S. high school students only; the trend describes population patterns and does not show what caused them.</dd>
      </div>
    </dl>
  </section>
</article>

<style>
.sleep-story {
  --sleep-accent: #73c7d4;
  --sleep-accent-soft: rgba(115, 199, 212, 0.14);
  --sleep-border: rgba(255, 255, 255, 0.13);
  --sleep-surface: rgba(255, 255, 255, 0.045);
  width: min(100%, 1120px);
  margin: 0 auto;
  padding: clamp(1rem, 3vw, 2.5rem) 0 clamp(3rem, 7vw, 6rem);
}

.story-hero {
  max-width: 850px;
  padding: clamp(2.5rem, 7vw, 5.5rem) 0 clamp(2rem, 4vw, 3.5rem);
}

.story-kicker,
.section-label,
.finding-label {
  margin: 0 0 0.75rem;
  color: var(--sleep-accent);
  font-family: var(--sans-serif);
  font-size: 0.76rem;
  font-weight: 700;
  letter-spacing: 0.13em;
  line-height: 1.4;
  text-transform: uppercase;
}

.story-hero h1 {
  max-width: 900px;
  margin: 0;
  font-size: clamp(2.6rem, 7vw, 5.4rem);
  font-weight: 650;
  letter-spacing: -0.045em;
  line-height: 0.98;
}

.story-subtitle {
  margin: 1.4rem 0 0;
  color: var(--sleep-accent);
  font-family: var(--sans-serif);
  font-size: clamp(1.3rem, 3vw, 1.85rem);
  font-weight: 550;
  line-height: 1.3;
}

.story-intro {
  max-width: 760px;
  margin: 1.5rem 0 0;
  color: var(--theme-foreground-muted);
  font-size: clamp(1.04rem, 2vw, 1.18rem);
  line-height: 1.75;
}

.finding-card {
  position: relative;
  max-width: 940px;
  margin: 0 0 clamp(2rem, 5vw, 3.5rem);
  padding: clamp(1.4rem, 4vw, 2.25rem) clamp(1.4rem, 4vw, 2.5rem);
  overflow: hidden;
  border: 1px solid rgba(115, 199, 212, 0.35);
  border-left: 4px solid var(--sleep-accent);
  border-radius: 0.75rem;
  background: linear-gradient(120deg, var(--sleep-accent-soft), rgba(255, 255, 255, 0.025));
  box-shadow: 0 18px 55px rgba(0, 0, 0, 0.18);
}

.finding-card::after {
  position: absolute;
  top: -5rem;
  right: -4rem;
  width: 13rem;
  height: 13rem;
  border-radius: 50%;
  background: rgba(115, 199, 212, 0.08);
  content: "";
}

.finding-card p:last-child {
  position: relative;
  z-index: 1;
  max-width: 850px;
  margin: 0;
  font-size: clamp(1.1rem, 2.3vw, 1.42rem);
  line-height: 1.55;
}

.finding-card strong {
  color: var(--theme-foreground-focus);
  font-weight: 700;
}

.sleep-story > .grid {
  width: 100%;
  max-width: 1000px;
  height: 827px;
  margin: 0 auto clamp(3rem, 7vw, 5.5rem);
  overflow: hidden;
  border: 1px solid var(--sleep-border);
  border-radius: 0.65rem;
  background: #17191d;
  box-shadow: 0 24px 70px rgba(0, 0, 0, 0.24);
}

.sleep-story > .grid tableau-viz {
  width: 100%;
  height: 100%;
}

.story-section {
  max-width: 820px;
  margin: 0 0 clamp(3rem, 7vw, 5rem);
}

.story-section h2,
.method-card h2 {
  margin: 0 0 1rem;
  font-size: clamp(1.65rem, 4vw, 2.45rem);
  font-weight: 620;
  letter-spacing: -0.025em;
  line-height: 1.15;
}

.story-section > p:not(.section-label) {
  color: var(--theme-foreground-muted);
  font-size: 1.06rem;
  line-height: 1.75;
}

.transition {
  margin-top: 1.6rem;
  padding-left: 1.25rem;
  border-left: 2px solid var(--sleep-accent);
  color: var(--theme-foreground) !important;
  font-weight: 600;
}

.method-card {
  padding: clamp(1.4rem, 4vw, 2.25rem);
  border: 1px solid var(--sleep-border);
  border-radius: 0.75rem;
  background: var(--sleep-surface);
}

.method-heading {
  max-width: 760px;
}

.method-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 0;
  margin: 1.75rem 0 0;
}

.method-grid > div {
  padding: 1.25rem 1.5rem 1.25rem 0;
  border-top: 1px solid var(--sleep-border);
}

.method-grid > div:nth-child(even) {
  padding-right: 0;
  padding-left: 1.5rem;
}

.method-grid dt {
  margin-bottom: 0.4rem;
  color: var(--sleep-accent);
  font-family: var(--sans-serif);
  font-size: 0.8rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
}

.method-grid dd {
  margin: 0;
  color: var(--theme-foreground-muted);
  font-size: 0.92rem;
  line-height: 1.6;
}

@media (max-width: 700px) {
  .sleep-story {
    padding-right: 0.15rem;
    padding-left: 0.15rem;
  }

  .story-hero {
    padding-top: 2.75rem;
  }

  .sleep-story > .grid {
    height: 727px;
    border-radius: 0.45rem;
  }

  .method-grid {
    grid-template-columns: 1fr;
  }

  .method-grid > div,
  .method-grid > div:nth-child(even) {
    padding: 1.1rem 0;
  }
}
</style>
