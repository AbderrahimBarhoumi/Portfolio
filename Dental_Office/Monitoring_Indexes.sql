--Create the extension

CREATE EXTENSION pg_stat_statements;

--Use it to identify active indexes
SELECT 
     relname AS table,
	 indexrelname AS index_name,
	 idx_scan,
	 idx_tup_read,
	 idx_tup_fetch
FROM 
   pg_stat_user_indexes
ORDER BY
     idx_scan DESC;
