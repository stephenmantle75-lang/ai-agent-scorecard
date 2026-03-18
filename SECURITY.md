# Security Policy

## What data this tool collects

AI Agent Scorecard is designed to be transparent about data:

| Data | Stored? | Where |
|------|---------|-------|
| GitHub username | ✅ Yes | Supabase (your instance) |
| Public GitHub stats (commits, stars, forks, languages) | ✅ Yes (aggregated scores only) | Supabase |
| Personal or private GitHub data | ❌ Never | — |
| Your IP address | ❌ Never | — |
| Cookies or tracking | ❌ Never | — |

**Only public GitHub data is ever read.** No GitHub token or authentication is required. The tool only calls the GitHub public REST API — the same data you can see by visiting any public profile.

Score data saved to Supabase contains: username, score breakdown, tier, archetype, and timestamp. Nothing else.

## GitHub API usage

This tool calls the GitHub public API without authentication. The default rate limit is **60 requests/hour per IP address**. If you hit rate limits, wait an hour or add a GitHub token (see the API docs for how to authenticate requests if you fork this project).

## Reporting a vulnerability

If you find a security issue (XSS, data exposure, injection, etc.):

1. **Do not open a public GitHub issue**
2. Email: security@clarosi.ie
3. Include: description, steps to reproduce, potential impact
4. We will respond within 5 business days

## Responsible disclosure

We follow a 90-day disclosure timeline. If a fix is not available within 90 days of your report, you are free to disclose publicly with reasonable notice.

## Scope

| In scope | Out of scope |
|----------|--------------|
| XSS vulnerabilities in the HTML/JS | GitHub API itself |
| Data stored in Supabase leaking | Third-party CDN libraries |
| Injection via GitHub username input | Issues with your own Supabase instance |
| Logic flaws in scoring that could be gamed | Score accuracy debates |
