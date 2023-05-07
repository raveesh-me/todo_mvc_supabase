
alter table "public"."todoitems" drop constraint "todoitems_pkey";

drop index if exists "public"."todoitems_pkey";

drop table "public"."todoitems";

create table "public"."todo_items" (
    "id" bigint generated always as identity not null,
    "title" text,
    "description" text,
    "is_completed" boolean default false,
    "created_at" timestamp with time zone default now(),
    "complete_by" timestamp with time zone
);


CREATE UNIQUE INDEX todoitems_pkey ON public.todo_items USING btree (id);

alter table "public"."todo_items" add constraint "todoitems_pkey" PRIMARY KEY using index "todoitems_pkey";
