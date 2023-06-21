SELECT
t.TrackId
,t.Name
,(SELECT
COUNT(DISTINCT p.PlaylistId)
FROM PlaylistTrack p 
WHERE p.TrackId = t.TrackId) AS Playlist_Popularity
FROM Track t 
GROUP BY t.TrackId
