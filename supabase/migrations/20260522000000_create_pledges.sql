create extension if not exists pgcrypto;

create table if not exists public.pledges (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null,
  phone text,
  organisation text,
  created_at timestamptz not null default now()
);

alter table public.pledges enable row level security;

drop policy if exists "Anyone can create pledges" on public.pledges;
create policy "Anyone can create pledges"
  on public.pledges
  for insert
  to anon
  with check (true);

drop policy if exists "Anyone can read pledges" on public.pledges;
create policy "Anyone can read pledges"
  on public.pledges
  for select
  to anon
  using (true);
