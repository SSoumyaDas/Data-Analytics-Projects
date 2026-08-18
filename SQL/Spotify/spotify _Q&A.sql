---EASY LEVEL---

-- Q1. Retrieve the names of all tracks that have more than 1 billion streams.

SELECT * FROM spotify 
WHERRE stream > 1000000000 ;

--Q2.List all the albums along with their respective artists.
 
SELECT album,artists 
FROM spotify ;

--Q3. Get the total number of comments for tracks where `licensed = TRUE`.

SELECT SUM(comments) as total_comments
FROM spotify 
WHERE licensed ='true' ;

--Q4. Find all tracks that belong to the album type `single`.

SELECT * FROM spotify 
WHERE album_type ='single';

--Q5.Count the total number of tracks by each artist.

SELECT artists, COUNT(*) as total_no_songs
FROM spotify 
GROUP BY artists ;

--- MEDIUM LEVEL ---

--Q1.Calculate the average danceability of tracks in each album.

SELECT album, avg(danceability) as avg_danceability 
FROM spotify 
GROUP BY 1 
ORDER BY 2 DESC ; 

--Q2. Find the top 5 tracks with the highest energy values.

SELECT track, MAX(energy) 
FROM spotify 
GROUP BY 1 
ORDER BY 2 DESC 
LIMIT 5 ;

--Q3. List all tracks along with their views and likes where `official_video = TRUE`.

SELECT track, 
       SUM(views) as total_views 
       SUM(likes) as total_likes
FROM spotify 
WHERE official_video='true'
GROUP BY 1 
ORDER BY 2 DESC,
LIMIT 5 ;

--Q4. For each album, calculate the total views of all associated tracks.
 
SELECT  album,track, sum(views) as total_view 
FROM spotify 
GROUP BY 1,2
ORDER BY 3 desc ;

--Q5. Retrieve the track names that have been streamed on Spotify more than YouTube.

SELECT * FROM 
(SELECT track,
      COALESCE(SUM(CASE WHEN most_played_on ='youtube' THEN stream END),0 )as streamed_on_youtube,
       COALESCE(SUM(CASE WHEN most_played_on ='spotify' THEN stream  END),0) as streamed_on_spotify 
FROM spotify
GROUP BY 1) as t1
WHERE 
    streamed_on_spotify> streamed_on_youtube 
    AND 
    streamed_on_youtube <> 0 ;

--- ADVANCED LEVEL---

--Q1. Find the top 3 most-viewed tracks for each artist using window functions.

WITH ranking_artist 
AS 

(SELECT artist,track,
       sum(views) as total_view,
       DENSE_RANK() over(PARTITION BY artist ORDER BY SUM(views) DESC) as rank 
FROM spotify 
GROUP BY  1,2
ORDER BY 1,3 DESC)
SELECT*FROM ranking_artist 
WHERE rank<=3 ;


--Q2. Write a query to find tracks where the liveness score is above the average.

SELECT 
track, artist, liveness
FROM spotify
WHERE liveness>(SELECT  AVG(liveness) as avg_liveness
       FROM spotify ) ;


--Q3. Use a `WITH` clause to calculate the difference between the highest and lowest energy values for tracks in each album.

WITH cte
AS
(SELECT album, MAX(energy) as highest_energy,
        MIN(energy) as lowest_energy
FROM spotify 
GROUP BY 1 )

SELECT 
 album ,
 highest_energy-lowest_energy as energy_diff 
FROM cte
ORDER BY 2 DESC ;

``Q4.Find tracks where the energy-to-liveness ratio is greater than 1.2.

SELECT 
    track,
    energy,
    liveness,
    energy / liveness AS energy_liveness_ratio
FROM spotify
WHERE energy / liveness > 1.2 ;


--Q5.Calculate the cumulative sum of likes for tracks ordered by the number of views, using window functions.

SELECT
    track,
    views,
    likes,
    SUM(likes) OVER (ORDER BY views) AS cumulative_likes
FROM cleaned_dataset
ORDER BY views;

