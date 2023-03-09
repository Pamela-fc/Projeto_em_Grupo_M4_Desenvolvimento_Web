use got; 

-- 1)  Quais os 5 episódios mais comentados pela internet?
select season, episode, users_reviews from got_episodes_v4 order by users_reviews desc;

-- 2) Quais temporadas e episódios foram dirigidos por Alan Taylor?
select season, episode from got_episodes_v4 where director = 'Alan Taylor';

-- 3) Quantas casas estão localizadas no Norte e nas Sub-regiões?
select count(region) from houses_v1 where region like 'north';
select count(region) from houses_v1 where region like 'north (wolfswood clans)';
select count(region) from houses_v1 where region like 'north (crannogmen)';

-- 4) Quantas familias tem a série e quantas são das Ilhas de Ferro (Iron Islands)?
select count(house_name) from houses_v1;
select count(region) from houses_v1 where region like 'iron islands%';

-- 5) Qual temporada (season) tem mais episódios com nota acima de 9? 
select season, episode, rating from got_episodes_v4 where rating>9;
