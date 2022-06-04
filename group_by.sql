-- In the group_by.sql file, write out the code for the following problems:

-- These questions reference the invoice, track and album tables.


-- Find the sum of totals in the invoice table grouped by billing_state.
SELECT SUM (total)
FROM invoice
GROUP BY billing_state

-- Find the average track length (in milliseconds) by album. Order the table by the averages.
SELECT AVG(milliseconds), album_id
FROM track
GROUP BY album_id
ORDER BY AVG(milliseconds) DESC -- or ORDER BY 1 which means first column

-- Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.
-- SELECT COUNT (artist_id)
-- FROM album
-- WHERE artist_id IN (8,22)
-- GROUP BY artist_id



SELECT COUNT (*), artist_id
FROM album
WHERE artist_id IN (8,22)
GROUP BY artist_id
