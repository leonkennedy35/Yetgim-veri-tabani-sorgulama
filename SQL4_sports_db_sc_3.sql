select * from players;
select * from teams;


--oyuncu adı, oyuncu soyadı, oyuncu piyasa değeri, maaş, takım adı

select 
players.name as "Oyuncu Adı",
players.surname as "Oyuncu Soyadı",
players.player_value as "Piyasa Değeri",
players.salary as "Oyuncu Maaşı",
teams.name as "Takım Adı"
from  players inner join teams on players.team_id = teams.id;

--"Oyuncu Adı","Oyuncu Soyadı","Piyasa Değeri","Maaş","Ülke Adı"

select 
players.name as "Oyuncu Adı",
players.surname as "Oyuncu Soyadı",
players.player_value as "Piyasa Değeri",
players.salary as "Oyuncu Maaşı",
countries.name as "Ülke Adı"
from players inner join countries on players.country_id = countries.id;

select * from players;

--kısaltmalarla

select 
p.name as "Oyuncu Adı",
p.surname as "Oyuncu Soyadı",
p.player_value as "Piyasa Değeri",
p.salary as "Oyuncu Maaşı",
c.name as "Ülke Adı"
from players p inner join countries c on p.country_id = c.id;

--"Oyuncu Adı","Oyuncu Soyadı","Piyasa Değeri","Maaş","Takım Adı","Ülke Adı"

select 
p.name as "Oyuncu Adı",
p.surname as "Oyuncu Soyadı",
p.player_value as "Piyasa Değeri",
p.salary as "Oyuncu Maaşı",
t.name as "Takım Adı",
c.name as "Oyuncu Ülkesi"
from players p inner join countries c on p.country_id = c.id 
inner join teams t on p.team_id = t.id;


--takım adı, branş adı
select
t.name as "Takım Adı",
b.name as "Branş Adı"
from teams_branches tb
inner join teams t on t.id = tb.team_id
inner join branchs b on b.id = tb.branch_id;


--takım adı, sponsorlul adı, sponsorluk açıklama
select
t.name as "Takım Adı",
s.name as "Sponsorluk Adı",
s.description as "Sponsorluk Açıklaması"
from teams_sponsorships ts 
inner join sponsorships s on ts.sponsorship_id = s.id
inner join teams t on t.id = ts.team_id;



-- oyuncu adı, takım adı, koç adı, branş adı, lig adı, pozisyonu, ülkesi
select * from players;
select * from teams;
select * from coachs;
select * from branchs;
select * from leagues;
select * from positions;
select * from countries;

--benim kod
select 
p."name"  as "Oyuncu Adı",
p."surname" as "Oyuncu Soyadı",
t.name as "Takım Adı",
c.name as "Koç Adı",
b."name" as "Branş Adı",
l."name" as "Lig Adı",
pos."name" as "Pozisyon Adı",
co."name" as "Ülke Adı"
from players p 
inner join teams t on p.team_id = t.id 
inner join coachs c on c.team_id = t.id 
inner join branchs b on b.id = c.branch_id 
inner join team_leagues tl on t.id = tl.league_id 
inner join leagues l on l.id = tl.league_id 
inner join positions pos on pos.id = b.id 
inner join countries co on co.id = p.country_id;

--hocanın kod
select 
concat(p."name",' ',p."surname")  as "Oyuncu Adı Soyadı",
t.name as "Takım Adı",
c.name as "Koç Adı",
b."name" as "Branş Adı",
l."name" as "Lig Adı",
pos."name" as "Pozisyon Adı",
co."name" as "Ülke Adı"
from players p 
inner join teams t on p.team_id = t.id 
inner join coachs c on c.team_id = t.id 
inner join branchs b on b.id = c.branch_id 
inner join team_leagues tl on t.id = tl.league_id 
inner join leagues l on l.id = tl.league_id
inner join players_positions pp  on pp.player_id = p.id
inner join positions pos on pos.id = pp.position_id  
inner join countries co on co.id = p.country_id

--sıralama

select 
concat(p."name",' ',p."surname")  as "Oyuncu Tam Adı",
t.name as "Takım Adı",
c.name as "Koç Adı",
b."name" as "Branş Adı",
l."name" as "Lig Adı",
pos."name" as "Pozisyon Adı",
co."name" as "Ülke Adı"
from players p 
inner join teams t on p.team_id = t.id 
inner join coachs c on c.team_id = t.id 
inner join branchs b on b.id = c.branch_id 
inner join team_leagues tl on t.id = tl.league_id 
inner join leagues l on l.id = tl.league_id
inner join players_positions pp  on pp.player_id = p.id
inner join positions pos on pos.id = pp.position_id  
inner join countries co on co.id = p.country_id
--asc artan, desc azalan
order by "Oyuncu Tam Adı"
order by "Oyuncu Tam Adı" desc;


--Türkiye de ki takımları listeleyiniz. Koç ADINA göre de a dan z ye olacak şekilde sıralayınız.
select
concat(p.name,' ', p.surname) as  "Oyuncu Tam Adı" ,
t.name as "Takım Adı",
concat(c.name,' ', c.surname) as "Koç Adı",
b.name as "Branş Adı",
l.name as "Lig Adı",
pos.name as "Pozisyon ADI",
cnt.name as "Ülke Adı"
from players p
inner join teams t on p.team_id = t.id
inner join coachs c on c.team_id = t.id
inner join branchs b on b.id = c.branch_id
inner join team_leagues tl on t.id = tl.team_id
inner join leagues l on l.id = tl.league_id
inner join players_positions pp on p.id = pp.player_id
inner join positions pos on pp.position_id = pos.id
inner join countries cnt on p.country_id = cnt.id
where cnt.name = 'Türkiye'
order by "Koç Adı","Ülke Adı"

--view, sorgunun sanal tablo olarak kaydedilmiş halidir.
--bir tablo gibi davranır ama tablo değildir.
--bir sorguyu sürekli olarak kopyalayıp yapıştırmamak için kullanılır.
--create view isim as

create view vw_player_details as
select
concat(p.name,' ', p.surname) as  "Oyuncu Tam Adı" ,
t.name as "Takım Adı",
concat(c.name,' ', c.surname) as "Koç Adı",
b.name as "Branş Adı",
l.name as "Lig Adı",
pos.name as "Pozisyon ADI",
cnt.name as "Ülke Adı"
from players p
inner join teams t on p.team_id = t.id
inner join coachs c on c.team_id = t.id
inner join branchs b on b.id = c.branch_id
inner join team_leagues tl on t.id = tl.team_id
inner join leagues l on l.id = tl.league_id
inner join players_positions pp on p.id = pp.player_id
inner join positions pos on pp.position_id = pos.id
inner join countries cnt on p.country_id = cnt.id


--view kullanmak
select * from vw_player_details where "Ülke Adı" ilike '%ür%';

























