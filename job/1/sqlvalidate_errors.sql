SELECT
  -- if valid then continue job, else fail with message
  SUM(error) = 0 AS vaild
  -- log message. json formatting is optional but will be easier to parse in logs
  ,TO_JSON(NAMED_STRUCT(
    'count', COUNT(error), 
    'errors', SUM(error)
  )) AS message
FROM (
  SELECT 
    CASE 
      WHEN SIZE(_errors) > 0 THEN 1 
      ELSE 0 
    END AS error 
  FROM ${table_name}
) input_table