SELECT name_album, year_of_release_album FROM albums
WHERE year_of_release_album IN ('2018');

SELECT name_track , duration FROM tracks
ORDER BY duration DESC;

SELECT name_track, duration FROM tracks
WHERE duration >= 3.50;

SELECT name_compilation, year_of_release_compilation FROM compilations
WHERE year_of_release_compilation BETWEEN '2018' AND '2020';

SELECT performer FROM performers
WHERE performer NOT LIKE '% %';

SELECT name_track FROM tracks
WHERE name_track LIKE '%my%';