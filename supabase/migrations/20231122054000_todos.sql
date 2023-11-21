-- Create a table called "todos"
-- with a column to store tasks.
create table todos (
  id serial primary key,
  task text
);

-- Turn on security
alter table "todos"
enable row level security;

-- Allow anonymous access
create policy "Allow anonymous access"
  on todos
  for select
  to anon
  using (true);

insert into todos (task)
values
  ('Create tables'),
  ('Enable security'),
  ('Add data'),
  ('Fetch data from the API');
