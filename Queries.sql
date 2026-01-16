select
  b.book_id,
  b.title,
  b.isbn,
  b.published_year,
  a.full_name as author,
  g.name as genre
from books b
join book_author ba on ba.book_id = b.book_id
join authors a on a.author_id = ba.author_id
join book_genre bg on bg.book_id = b.book_id
join genres g on g.genre_id = bg.genre_id
order by b.book_id;

select
  l.loan_id,
  concat(m.first_name, ' ', m.last_name) as member,
  b.title as book_title,
  concat(s.first_name, ' ', s.last_name) as staff,
  l.loan_date,
  l.due_date,
  l.loan_status
from loans l
join members m on m.member_id = l.member_id
join books b on b.book_id = l.book_id
join staff s on s.staff_id = l.staff_id
where l.loan_status = 'active'
order by l.due_date;

select
  l.loan_id,
  concat(m.first_name, ' ', m.last_name) as member,
  b.title as book_title,
  l.due_date
from loans l
join members m on m.member_id = l.member_id
join books b on b.book_id = l.book_id
where l.return_date is null
  and l.due_date < curdate()
order by l.due_date;

select
  l.loan_id,
  concat(m.first_name, ' ', m.last_name) as member,
  b.title as book_title,
  l.due_date,
  l.return_date,
  datediff(l.return_date, l.due_date) as days_late
from loans l
join members m on m.member_id = l.member_id
join books b on b.book_id = l.book_id
where l.return_date is not null
  and l.return_date > l.due_date
order by days_late desc;

select
  b.book_id,
  b.title,
  count(l.loan_id) as times_borrowed
from books b
left join loans l on l.book_id = b.book_id
group by b.book_id, b.title
order by times_borrowed desc, b.title
limit 5;

select
  m.member_id,
  concat(m.first_name, ' ', m.last_name) as member,
  count(l.loan_id) as loans_count
from members m
left join loans l on l.member_id = m.member_id
group by m.member_id, member
order by loans_count desc, member
limit 5;

select
  m.member_id,
  concat(m.first_name, ' ', m.last_name) as member,
  count(l.loan_id) as total_loans,
  sum(case when l.loan_status = 'active' then 1 else 0 end) as active_loans,
  sum(case when l.loan_status = 'returned' then 1 else 0 end) as returned_loans,
  sum(case when l.return_date is null and l.due_date < curdate() then 1 else 0 end) as overdue_loans
from members m
left join loans l on l.member_id = m.member_id
group by m.member_id, member
order by overdue_loans desc, total_loans desc, member;

select
  s.staff_id,
  concat(s.first_name, ' ', s.last_name) as staff,
  s.role,
  count(l.loan_id) as loans_processed
from staff s
left join loans l on l.staff_id = s.staff_id
group by s.staff_id, staff, s.role
order by loans_processed desc, staff;

select
  b.book_id,
  b.title
from books b
left join loans l on l.book_id = b.book_id
where l.loan_id is null
order by b.book_id;

select
  b.book_id,
  b.title,
  b.published_year,
  a.full_name as author,
  g.name as genre
from books b
join book_author ba on ba.book_id = b.book_id
join authors a on a.author_id = ba.author_id
join book_genre bg on bg.book_id = b.book_id
join genres g on g.genre_id = bg.genre_id
where b.published_year <= 1950
order by b.published_year desc, b.title;

select
  m.member_id,
  concat(m.first_name, ' ', m.last_name) as member
from members m
left join loans l on l.member_id = m.member_id
group by m.member_id, member
having count(l.loan_id) = 0
order by member;
