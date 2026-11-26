# Phones vs. Sleep

**Live dashboard:** https://phones-vs-sleep.vercel.app/

Final project for 67-290 Storytelling with Data (CMU-Qatar, Fall 2026).
Team: Amen, Saoud, Théthé.

## The story

Most students don't get enough sleep, and heavy phone use often comes with it. The dashboard answers three questions:

1. **How big is the problem?** How many teens get enough sleep, and how that has changed over time.
2. **Is phone use connected?** Whether students who use social media more sleep less.
3. **Why does it matter?** How short sleep connects to mental health and grades.

The [final report](https://phones-vs-sleep.vercel.app/report.html) explains our findings, design choices, and limitations.

## Data

- [CDC Youth Risk Behavior Survey (YRBS)](https://www.cdc.gov/yrbs/data/index.html): national survey of US high school students (weighted).
- [Kaggle "Student Social Media & Mental Health Impact"](https://www.kaggle.com/datasets/shivasingh4945/student-social-media-and-mental-health-impact): student-level data, partly simulated, used only to illustrate patterns.

Charts are built in Tableau Public and embedded in an Observable Framework site.

## Run locally

```
npm install
npm run dev
```

Then open http://localhost:3000.

See [CONTRIBUTIONS.md](./CONTRIBUTIONS.md) for who did what.
