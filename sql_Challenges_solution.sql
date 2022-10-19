use publications;
-- Challenge 1
select authors.au_id, au_lname, au_fname, titles.title, pub_name
from authors
	join titleauthor
	on authors.au_id = titleauthor.au_id
	join titles
	on titleauthor.title_id = titles.title_id
	join publishers
	on titles.pub_id = publishers.pub_id
    order by au_id asc;
    
    -- Challenge 2
select authors.au_id, au_lname, au_fname,pub_name, count(titles.title) as title_count
from authors
	join titleauthor
	on authors.au_id = titleauthor.au_id
	join titles
	on titleauthor.title_id = titles.title_id
	join publishers
	on titles.pub_id = publishers.pub_id
	group by au_id;


-- Challenge 3
select authors.au_id, au_lname, au_fname, sum(qty) as total
from authors
join titleauthor
	on authors.au_id = titleauthor.au_id
join sales
	on titleauthor.title_id = sales.title_id
group by au_id
order by total desc
limit 3;

-- challenge 4
select authors.au_id, au_lname, au_fname, sum(qty) as total
from authors
join titleauthor
	on authors.au_id = titleauthor.au_id
join sales
	on titleauthor.title_id = sales.title_id
group by au_id
order by total desc
limit 23;
