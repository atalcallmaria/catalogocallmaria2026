-- Execute no SQL Editor do seu projeto Supabase.
create table if not exists public.products (
 id uuid primary key default gen_random_uuid(),
 name text not null,
 description text default '',
 material text default '',
 weight_kg numeric,
 dimensions text default '',
 colors text[] not null default array['A definir']::text[],
 price numeric(12,2) check (price >= 0),
 image_url text default '',
 active boolean not null default false,
 sort_order integer not null default 0,
 created_at timestamptz not null default now()
);
alter table public.products enable row level security;
create policy "Public can read active products" on public.products for select to anon, authenticated using (active = true);
-- Por segurança, não existe política pública de escrita.
-- Para o MVP, cadastre/edite produtos pelo Table Editor do Supabase.
-- Futuramente criaremos um painel administrativo com login e políticas específicas.
