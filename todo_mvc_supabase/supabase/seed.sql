INSERT INTO public.todo_items (title, description, is_completed, created_at, complete_by)
SELECT
  CONCAT('Task ', num),
  CONCAT('Description for task ', num),
  CASE WHEN num % 2 = 0 THEN true ELSE false END,
  NOW() - (INTERVAL '1 day' * (500 - num)),
  NOW() + (INTERVAL '1 day' * (num % 30))
FROM generate_series(1, 200) num;
