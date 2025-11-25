create role 'adminhospital';
create role 'medico';
create role 'enfermeiro';

create user 'admin_hosp'@'localhost' identified by '1234';
create user 'medico_user'@'localhost' identified by '1234';
create user 'enfermeiro_user'@'localhost' identified by '1234';

grant all privileges on *.* to 'adminhospital';

grant select, insert, update on hospitais.* to 'medico';
grant select on doentes.* to 'medico';
grant select, update on diagnosticos.* to 'medico';
grant select on analises.* to 'medico';

grant select, update on doentes.* to 'enfermeiro';
grant select on enfermeiros.* to 'enfermeiro';
grant select on enfermarias.* to 'enfermeiro';

grant 'adminhospital' to 'admin_hosp'@'localhost';
grant 'medico' to 'medico_user'@'localhost';
grant 'enfermeiro' to 'enfermeiro_user'@'localhost';

create view vw_doentes_publicos as
select coddoente, codhospital, numhospital
from doentes;

create view vw_empregados_publicos as
select codempregado, categoria, codhospital
from empregados;

revoke delete on doentes from 'medico';
revoke delete on diagnosticos from 'medico';
revoke delete on doentes from 'enfermeiro';
revoke insert on doentes from 'enfermeiro';

show grants for 'admin_hosp'@'localhost';
show grants for 'medico_user'@'localhost';
show grants for 'enfermeiro_user'@'localhost';
