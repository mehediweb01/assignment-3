## Football Ticket Booking System - Database Design & SQL Queries

This repository contains my assignment work.

### About Me:

- I'm Md. Mehedi Hasan. I'm front-end developer & specialize in React.js, Next.js, JavaScript, TailwindCSS etc. I'm currently improving backend related technology.

---

### Query.sql:

- [Query.sql](https://github.com/mehediweb01/assignment-3/blob/main/QUERY.sql)

---

### Quires:

- Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
- Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive).
- Query 3: Retrieve all booking records where the payment status is missing (NULL), replacing the empty result with 'Action Required'.
- Query 4: Retrieve match booking details along with the User's full name and the scheduled Match fixture teams.
- Query 5: Display a comprehensive list of all users and their booking IDs, ensuring that fans who have never bought a ticket are still listed.
- Query 6: Find all ticket bookings where the total cost is strictly higher than the average cost of all ticket bookings.
- Query 7: Retrieve the top 2 most expensive matches sorted by base ticket price, skipping the absolute highest premium match.

---

### Database Schema Summary:

#### Users Table:

| Field        | Type                | Description                 |
| ------------ | ------------------- | --------------------------- |
| user_id      | SERIAL              | Unique user ID              |
| full_name    | VARCHAR(250)        | User name                   |
| email        | VARCHAR(255) UNIQUE | User email                  |
| role         | enum                | Ticket Manager,Football Fan |
| phone_number | VARCHAR(14)         | user phone number           |

#### Matches Table:

| Field               | Type         | Description                                  |
| ------------------- | ------------ | -------------------------------------------- |
| match_id            | SERIAL       | Unique match ID                              |
| fixture             | VARCHAR(255) | Real Madrid vs Barcelona                     |
| tournament_category | VARCHAR(255) | tournament category                          |
| base_ticket_price   | DECIMAL(8,2) | ticket price                                 |
| match_status        | enum         | Available, Selling Fast, Sold Out, Postponed |

#### Booking Table:

| Field          | Type         | Description                          |
| -------------- | ------------ | ------------------------------------ |
| booking_id     | SERIAL       | Unique booking ID                    |
| user_id        | INT          | FK - user table user_id              |
| match_id       | INT          | FK - matches table match_id          |
| seat_number    | VARCHAR(12)  | stadium seat number                  |
| payment_status | enum         | Pending,Confirmed,Cancelled,Refunded |
| total_cost     | DECIMAL(8,2) | total costing                        |

---

### Contact Me:

- Email: mehedihasan87456@gmail.com
- WhatsApp: +8801576794817
- [GitHub](https://github.com/mehediweb01)
- [LinkedIn](https://www.linkedin.com/in/mehediweb01/)

---

### Thank you

### Best Regards: <br/>

Md. Mehedi Hasan
