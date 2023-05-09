create table
  public.todo_items (
    id bigint generated always as identity not null,
    title text null,
    description text null,
    is_completed boolean null default false,
    created_at timestamp with time zone null default now(),
    complete_by timestamp with time zone null,
    constraint todoitems_pkey primary key (id)
  ) tablespace pg_default;
  