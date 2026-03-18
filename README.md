# 🦀 AI Agent Scorecard

**Score any GitHub user or repo as an AI agent. Get a shareable card, rank on the leaderboard.**

> Paste a GitHub username → get an instant capability scorecard with tier, archetype, behavioural signals, and metrics.

![AI Agent Scorecard](https://img.shields.io/badge/built%20with-vanilla%20JS-yellow) ![Supabase](https://img.shields.io/badge/backend-Supabase-green) ![No build step](https://img.shields.io/badge/build%20step-none-blue)

---

## What it does

- Fetches public GitHub data (repos, commits, languages, stars, forks)
- Scores across 6 dimensions: **Consistency, Diversity, Quality, Impact, Learning, Depth**
- Assigns a **Tier** (Nascent → Master) and **Agent Archetype** (Builder, Strategist, Specialist, etc.)
- Shows **Behavioural Signals** and unlocked **Achievements**
- Auto-saves every score to Supabase → generates a **unique shareable URL**
- Public **Leaderboard** of top 50 scores

---

## Demo

Score yourself: paste your GitHub username and hit Generate.

---

## Setup

### 1. Clone

```bash
git clone https://github.com/YOUR_USERNAME/ai-agent-scorecard.git
cd ai-agent-scorecard
```

### 2. Create a Supabase project

1. Go to [supabase.com](https://supabase.com) and create a free project
2. In the SQL Editor, run `supabase-schema.sql` (creates the `scorecards` table + RLS policies)
3. Go to **Settings → API Keys** and copy your **Project URL** and **Publishable key**

### 3. Add your credentials

Open `index.html` and replace lines 1134–1135:

```js
const SUPABASE_URL = 'https://your-project.supabase.co';
const SUPABASE_ANON_KEY = 'your-publishable-key';
```

### 4. Deploy

No build step. Deploy `index.html` anywhere static:

- **Cloudflare Pages** — drag and drop or connect to this repo
- **Vercel** — `vercel --prod`
- **GitHub Pages** — enable in repo settings
- Or just open `index.html` directly in a browser

> Without Supabase configured, the tool still works fully — scoring and card display are 100% client-side. The leaderboard and share URLs require Supabase.

---

## Architecture

| Layer | Tech |
|-------|------|
| Frontend | Vanilla JS, single HTML file, no build step |
| Data | GitHub public API (no auth required) |
| Backend | Supabase (Postgres + RLS) |
| Fonts | Bebas Neue, JetBrains Mono, DM Sans (Google Fonts) |
| Charts/UI | Pure CSS + SVG |

**Everything runs client-side.** No server, no API proxy. GitHub data is fetched directly from the browser.

---

## Scoring System

| Metric | Max | What it measures |
|--------|-----|-----------------|
| Consistency | 25 | Commit frequency over 28 days |
| Diversity | 20 | Languages and domain spread |
| Quality | 20 | README coverage, documentation |
| Impact | 20 | Stars, forks, project reach |
| Learning | 10 | Repo growth and new languages |
| Depth | 5 | Specialisation in a domain |

**Total: 100 points**

### Tiers

| Score | Tier |
|-------|------|
| 90–100 | MASTER |
| 75–89 | EXPERT |
| 60–74 | CAPABLE |
| 45–59 | EMERGING |
| 0–44 | NASCENT |

---

## Supabase Schema

See `supabase-schema.sql`. The `scorecards` table stores:

- GitHub username, repo, score, tier, archetype
- All 6 metric scores
- Stats (commits, stars, forks, domains)
- Timestamp

Row Level Security is enabled — anyone can read (leaderboard) and insert (save scores). No auth required.

---

## License

MIT — fork it, deploy it, hack it.

---

Built by [ClaroSi](https://clarosi.ie)
