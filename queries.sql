select genres, count (*) from movies_metadata   group by genres;

select title from movies_metadata where revenue = (select MAX(revenue) from movies_metadata mm );

select avg (runtime) from movies_metadata mm;

select vote_average  from movies_metadata mm where vote_average >= 4;

select original_language, count(*)from movies_metadata mm group by original_language ;

select release_date from movies_metadata mm where release_date >= '1997-01-01' and release_date <= '1997-12-31';

select status from movies_metadata mm  where status != 'Released' ;

select belongs_to_collection from movies_metadata mm  where belongs_to_collection = belongs_to_collection ;

select title, (revenue - budget) as gains from movies_metadata where revenue  != 0 and budget  != 0 order by gains desc
