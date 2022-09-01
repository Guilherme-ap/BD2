#Guilherme Alves Pereira. GU:3022021
#Lorrayne Saraiva dos Santos. GU:3020827

#Essa pesquisa retorna todos os dados da tabela country ordenado por id
select * from country order by country_id;

#Essa pesquisa retorna o primeiro nome da tabela actor que possuem o actor id maior que 3
select first_name from actor where actor_id > 3;

#vai retorna a contagem de filmes da tabela de filmes que começam por a
select	length(title)  from film where title Like "a%";

#retorna todos os parametros da tabela filme que tenha a mesma lingua na tabela language
select * from film
inner join language
where language.name = 'english';

# esse comando retorna o store id da tabela store se o endereço for maior que 10 e une com a tabela actor
select store_id from store where address_id > 10 union all
	select actor_id
		from actor 
		where actor_id > 0 and actor_id < 100;
        
#retorna titulos dinstintos e nome da tabela film comparando a linguagens
select distinct title, name from film f inner join languages l on f.languages = l.languages;

#retornar todos os valores de country unidos com film
select * from country union all select * from film;

#retornar nome do autor se existir seu nome nos filmes
select name from actor where exists (select name from film where name = "jhon");

#utilizando a recursividade na tabela actor 
with actor (actor_id, name) as (select 1,2 union all select 3,4) select actor_id from actor;

#seleciona o endereço de alguem e retornar ordenado se for diferente de nulo
select a.address from address where address <> null order by district;

#retornar os dados de pagamentos maior que mil
select * from payments where payment > 1000;

#retorna os nomes concatenados e todos os dados de payment
select concat(first_name, '  ',last_name) as nome from customer fullouter join payment group by customer_id;

#puxar todos os valores de city ordenados por id
select * from city order by country_id;

#puxar todos os valores de inventory se o id for maior que 10 e film id diferente de nulo
select * from inventory where inventory_id > 10 and film_id <> null;

#puxar todos os valores de rental e ordenanado por data mais recente
select * from rental  order by rental_date DESC;

#retorna posição da string 
select first_name, position("cd" in first_name) as posicao from customer;

#retorna posição da string 
select locate("dc", first_name) as posicao from customer;

#retorna posição da string 
select instr(first_name, "ab") as posicao from customer;

#une as tabelas filme category e film
select * from film_category c union all select * from film f where c.film_id = f.film_id;
 
#caracteres em upper case
select upper(first_name) as Uppercase from actor; 

#caracteres em upper case
select upper(title) as Uppercase from film; 
 
#retorna todos os filmes com o tema de drama
select  title description
from film
where description like '%dra%';

#retorna todos os filmes que possuem 'tra' no nome
select  title description
from film
where title like '%tra%';

#retorna todos os filmes que possuem 'fo' no nome
select  title description
from film
where title like '%fo%';

#retorna os filmes com determinadas durações
select title, length
from film
where length between 120 and 140
order by length asc;

#retorna os filmes com determinadas durações
select title, length
from film
where length between 60 and 100
order by length asc;

#retorna os filmes com determinadas durações
select title, length
from film
where length between 0 and 59
order by length asc;
 
#apaga a coluna picture
alter table staff
drop column picture;

#apaga a coluna language
alter table film
drop column language;

#apaga a coluna
alter table address
drop column district;


