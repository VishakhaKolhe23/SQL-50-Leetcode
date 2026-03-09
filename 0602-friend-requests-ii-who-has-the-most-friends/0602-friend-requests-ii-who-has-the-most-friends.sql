# Write your MySQL query statement below
# id=friends count
#1= 1+1
#2=1+1
#3= 1+1+1
# 4 = 1
select id, count(id) as num from
(select requester_id as id from RequestAccepted
union all
select accepter_id as id from RequestAccepted) temp
group by id 
order by num desc limit 1
