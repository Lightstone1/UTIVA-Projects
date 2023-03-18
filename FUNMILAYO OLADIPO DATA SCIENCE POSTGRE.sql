--FUNMILAYO OLADIPO  DATA SCIENCE POSTGRESQL Assignment 

--QUESTION THREE: THE COUNTRY WITH THE HIGHEST AND LOWEST APPEARANCE IN THE LAST FIVE YEARS?

WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
MAX (team) AS highest_appearance_team,
MIN (team) AS lowest_appearance_team
FROM
all_world_cup;






--QUESTION FOUR: COUNTRY WITH HIGHEST  AND LOWEST GAMES PLAYED 

WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
all_world_cup.team,
all_world_cup.games_played
FROM 
all_world_cup
ORDER BY
games_played DESC;





--QUESTION FIVE: THE COUNTRY WITH THE HIGHEST and LOWEST GAME WON

WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
position,
all_world_cup.team,
all_world_cup.win
FROM 
all_world_cup
ORDER BY
win ASC
;



-- QUESTION SIX: THE COUNTRY WITH THE HIGHEST and LOWEST GAME LOST

WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
position,
all_world_cup.team,
all_world_cup.loss
FROM 
all_world_cup
ORDER BY
loss DESC
;




--QUESTION 7: COUNTRY WITH HIGHEST AND LOWEST GOAL FOR


WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
position,
all_world_cup.team,
all_world_cup.goals_for
FROM 
all_world_cup
ORDER BY
goals_for DESC
;



-- QUESTION EIGHT-THE COUNTRY WITH THE HIGHEST and LOWEST GOAL AGAINST



WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
position,
all_world_cup.team,
all_world_cup.goals_against
FROM 
all_world_cup
ORDER BY
goals_against DESC
;




--QUESTION NINE- THE COUNTRY WITH THE HIGHEST and LOWEST GOALS DIFFERENCE


WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
position,
all_world_cup.team,
all_world_cup.goals_difference
FROM 
all_world_cup
ORDER BY
goals_difference DESC
;




--QUESTION TEN-THE COUNTRY WITH THE HIGHEST and LOWEST POINTS


WITH
	all_world_cup AS (
	SELECT
'wc 2002' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
		
FROM
fifa_2002

UNION ALL

SELECT
'wc 2006' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2006

UNION ALL

SELECT
'wc 2010' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2010

UNION ALL

SELECT
'wc 2014' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2014

UNION ALL

SELECT
'wc 2018' AS worldcupyear,
team,
points,
games_played,
win,
loss,
goals_for,
goals_against,
position,
draw,
goals_difference
FROM
fifa_2018
		
)

SELECT 
position,
all_world_cup.team,
all_world_cup.points
FROM 
all_world_cup
ORDER BY
points DESC
;















