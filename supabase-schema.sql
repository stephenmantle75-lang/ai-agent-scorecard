-- AI Agent Scorecard — Supabase Schema
-- Run this in your Supabase SQL Editor

create table scorecards (
  id uuid default gen_random_uuid() primary key,
  github_username text not null,
  repo text,
  total_score integer not null,
  tier text not null,
  archetype text,
  consistency integer,
  diversity integer,
  quality integer,
  impact integer,
  learning integer,
  depth integer,
  recent_commits integer,
  total_stars integer,
  total_forks integer,
  domain_count integer,
  created_at timestamptz default now()
);

-- Enable RLS
alter table scorecards enable row level security;

-- Allow anyone to read (for leaderboard)
create policy "Public read"
  on scorecards for select
  using (true);

-- Allow anyone to insert (no auth required)
create policy "Public insert"
  on scorecards for insert
  with check (true);

-- Indexes for leaderboard query performance
create index idx_scorecards_score on scorecards(total_score desc);
create index idx_scorecards_username on scorecards(github_username);
create index idx_scorecards_created on scorecards(created_at desc);
