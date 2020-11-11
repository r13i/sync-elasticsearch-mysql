SELECT
	j.journal_id, j.action_type, j.isbn,
	b.title, b.authors, b.publication_date
FROM books.books_journal j
LEFT JOIN books.books b ON b.isbn = j.isbn
WHERE j.journal_id > :sql_last_value
	AND j.action_time < NOW()
ORDER BY j.journal_id