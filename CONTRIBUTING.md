# Contributing

Thanks for your interest. Contributions are welcome — bug fixes, scoring improvements, new archetypes, UI polish.

## What we're looking for

- **Bug fixes** — something broken? Open an issue first, then a PR
- **Scoring improvements** — better logic for metrics, new signals, fairer archetypes
- **New domain patterns** — additional language/domain detection keywords
- **UI improvements** — must match the existing dark GitHub aesthetic, no new dependencies
- **Leaderboard features** — filters, time ranges, per-tier views

## What we're not looking for

- New frameworks or build steps — this is intentionally a single HTML file with no bundler
- Features that require a backend beyond Supabase
- Breaking changes to the scoring formula without strong justification (it would invalidate existing leaderboard scores)

## How to contribute

1. Fork the repo
2. Set up Supabase (see README)
3. Make your changes in `index.html`
4. Test it locally — open `index.html` in a browser, score a few GitHub usernames
5. Open a PR with a clear description of what changed and why

## Scoring changes

If you're proposing a change to the scoring formula, include:
- Current output vs. new output for 3+ real GitHub usernames
- Reasoning for why the new formula is more accurate
- Acknowledgement that it will change existing scores

## Code style

- Vanilla JS only — no frameworks, no imports
- All CSS as custom properties (tokens) — no hardcoded hex values outside `:root`
- HTML-escaped user input everywhere — security is non-negotiable
- Keep it a single file

## Reporting bugs

Open a GitHub Issue with:
- What you expected
- What happened instead
- GitHub username you were scoring (if relevant)
- Browser + OS
