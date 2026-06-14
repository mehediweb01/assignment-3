-- assignment 3 - programming hero

-- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
select
  match_id,
  fixture,
  round(base_ticket_price)
from
  matches
where
  tournament_category = 'Champions League'
  and match_status = 'Available';

-- Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive).
select
  user_id,
  full_name,
  email
from
  users
where
  full_name ilike 'Tanvir%'
  or full_name ilike '%Haque';


-- Query 3: Retrieve all booking records where the payment status is missing (NULL), replacing the empty result with 'Action Required'.
select
  booking_id,
  user_id,
  match_id,
  COALESCE(payment_status, 'Action Required') as systematic_status
from
  bookings
where
  payment_status is null;