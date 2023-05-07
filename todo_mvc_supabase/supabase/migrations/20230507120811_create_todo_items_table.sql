
create table
TodoItems (
id bigint primary key generated always as identity,
title  text,
description text,
is_completed boolean default false,
created_at timestamptz default now()
);
