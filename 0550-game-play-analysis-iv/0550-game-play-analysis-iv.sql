# Write your MySQL query statement below
select 
round(sum(player_login) / count(distinct player_id) ,2) as fraction
from 
(select  player_id,
datediff(event_date,min(event_date) over (partition by player_id))=1 as player_login
from activity) as new_table
# PARTITION BY clause is used to partition rows of table into groups
#it is always used inside OVER() clause. 

