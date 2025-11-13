-- bir takımdaki ki oyuncuların ortalama maaşları
-- fenerbakçe 3.5m

select * from players;
select * from teams;
select * from branchs;

select 
	t.name as "Takım Adı",
	b.name as "Branş Adı",
	round(avg(P.salary)) as "Maaş Ortalaması"
from  teams t inner join players p on p.team_id = t.id
inner join  teams_branches tb on tb.team_id  = t.id
inner join branchs b on b.id = tb.branch_id 
group by "Takım Adı","Branş Adı" order by "Maaş Ortalaması";


--örnek by me
select 
p."name" as "Oyuncu İsmi", 
t.name as "Takım Adı", 
b.name as "Branş Adı",
sum(p.salary) as "Ortalama Maaş"
from players p inner join teams t on p.team_id = t.id
inner join teams_branches tb on tb.team_id = t.id    
inner join branchs b on b.id = tb.branch_id
group by p.name, t.name, "Branş Adı";

-- bir takımdaki ki oyuncuların ortalama maaşları filtre oalraks adece futbol branşı gösterilsin

select 
	t.name as "Takım Adı",
	b.name as "Branş Adı",
	round(avg(P.salary)) as "Maaş Ortalaması"
from  teams t inner join players p on p.team_id = t.id
inner join  teams_branches tb on tb.team_id  = t.id
inner join branchs b on b.id = tb.branch_id 
where b.name = 'Futbol'
group by "Takım Adı","Branş Adı" order by "Maaş Ortalaması" desc;

-- bir takımdaki ki oyuncuların ortalama maaşları listelenecek ama ortalaması 20m'den fazla olanlar sadece
--önce select agg join group having order

select 
	t.name as "Takım Adı",
	b.name as "Branş Adı",
	round(avg(P.salary)) as "Maaş Ortalaması"
from  teams t inner join players p on p.team_id = t.id
inner join  teams_branches tb on tb.team_id  = t.id
inner join branchs b on b.id = tb.branch_id 
group by "Takım Adı","Branş Adı"
having avg(p.salary ) > 20000000
order by "Maaş Ortalaması" desc;


-- branşa göre oyuncu ve koç maaş ortalaması
--futbol 25m, basketbol 10m...

--benim












--hocanın
select
	b.name as "Branş Adı",
	AVG(p.salary) as "Oyuncu Maaş Ortalaması",
	AVG(c.salary) as "Koçların Maaş Ortalaması"
from branchs b 
inner join teams_branches tb on b.id = tb.branch_id 
inner join teams t on t.id = tb.team_id
inner join players p on p.team_id = t.id 
inner join coachs c on c.branch_id = b.id
group by "Branş Adı" order by "Oyuncu Maaş Ortalaması", "Koçların Maaş Ortalaması";


--Koçlar ve oyuncuların branşlarına görer maaş ortalaması bvaz alınarak listelenmesi gerkeir.
--filtre1: oyuncu maaş ortalamalrı 27500000 ile 36250000 arasında olmalıdır.
--filtre2: branş adında metnin herhangi bir yerinde bol kelimesi geçiormu?


select
	b.name as "Branş Adı",
	AVG(p.salary) as "Oyuncu Maaş Ortalaması",
	AVG(c.salary) as "Koçların Maaş Ortalaması"
from branchs b 
inner join teams_branches tb on b.id = tb.branch_id 
inner join teams t on t.id = tb.team_id
inner join players p on p.team_id = t.id 
inner join coachs c on c.branch_id = b.id
where b.name ilike '%bol%'
group by "Branş Adı" 
having avg(p.salary) between 27500000 and 36250000
order by "Oyuncu Maaş Ortalaması", "Koçların Maaş Ortalaması";


--view oluşturarak grup tablosu oluşturma
create view vw_coach_and_player_group_by_avg_salary as
select
	b.name as "Branş Adı",
	AVG(p.salary) as "Oyuncu Maaş Ortalaması",
	AVG(c.salary) as "Koçların Maaş Ortalaması"
from branchs b 
inner join teams_branches tb on b.id = tb.branch_id 
inner join teams t on t.id = tb.team_id
inner join players p on p.team_id = t.id 
inner join coachs c on c.branch_id = b.id
group by "Branş Adı" 
order by "Oyuncu Maaş Ortalaması", "Koçların Maaş Ortalaması";

select * from vw_coach_and_player_group_by_avg_salary
where ("Oyuncu Maaş Ortalaması" between 27500000 and 36250000) and "Branş Adı" ilike '%bol%';





























