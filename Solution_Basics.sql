/*Luis*/
Use bank;
#Query 1
select client_id from client
where district_id = 1
limit 5;

#Query 2
select client_id from client
where district_id=72
order by client_id desc
limit 1;

#Query 3
select amount from loan
order by amount asc
limit 3;

#Query 4
select distinct status
from loan 
order by status;

#Query 5
select loan_id 
from loan
order by payments desc
limit 1;
#the result in the lab contains an error the 6312 correspond to the lowest payments

#Query 6
select account_id
,amount
from loan
order by account_id asc
limit 5;

#Query 7
select account_id
#, amount
#, duration
from loan
where duration=60
order by amount
limit 5
;

#Query 8
select distinct k_symbol from bank.order;

#Query 9
select order_id 
from `order`
where account_id = 34;

#Query 10
select distinct account_id 
from `order`
where order_id>29540 and order_id<29560;

#Query 11
select amount 
from bank.order
where account_to = '30067122';

#Query 12
select trans_id
, date
, type
, amount
from trans
where account_id = 793
order by date desc
limit 10;

#Query 13
select  district_id, count(*) as NBR_Clients
from client
where district_id < 10
group by district_id
order by district_id;

#Query 14
select type, count(*) as NBR_CARDS 
from card
group by type;

#Query 15
select account_id, sum(amount) as TOTAL_AMOUNT 
from loan
group by account_id
order by sum(amount) desc
limit 10
;

#Query 16
select date, count(*) as NBR_CONTRACTS
from loan 
where date > 930907
group by date
order by date desc # There is a mistake in the result in descenten order so most updated is on top. in the solution in Github first row is 930906
;

#Query 17
select date, duration, count(*) as NBR_CONTRACTS
from loan 
where date between 971201 and 971231
group by date, duration
order by date, duration 
;


#Query 18
select account_id, type, sum(amount) as TOTAL_AMOUNT 
from trans 
where account_id = 396
group by type
order by type;

#Query 19
select account_id, 
	case 
		when type='PRIJEM' then 'INCOMING'
		when type='VYDAJ' then 'OUTGOING'
	end 
as transaction_type, 
round(sum(amount)) as TOTAL_AMOUNT 
from trans 
where account_id = 396
group by type
order by type;

#Query 20
select account_id, 
case 
	when type='PRIJEM' then round(sum(amount))
end 
 as INCOMING_AMT, 
 case 
    when type='VYDAJ' then round(sum(amount))
end 
 as OUTGOING_AMT 
from trans 
where account_id = 396
group by type
#order by type
;

#Query 21



select * from trans; 
select * from loan;