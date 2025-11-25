select nome, morada
from hospitais
order by morada;

select e.nome as empregado, e.categoria, ee.funcao, en.sigla as enfermaria, h.nome as hospital
from empregados e, empregados_enfermarias ee, enfermarias en, hospitais h
where e.codempregado = ee.codempregado and ee.codenfermaria = en.codenfermaria and en.codhospital = h.codhospital
order by h.nome, e.categoria;

select nome, morada
from doentes
where nome like 'm%';

select codhospital, count(*) as num_empregados
from empregados
group by codhospital;

select categoria, avg(vencimento) as media_vencimento, max(vencimento) as vencimento_maximo
from empregados
group by categoria;

select nome, morada
from hospitais
where codhospital in (
    select codhospital
    from enfermarias
    where num_camas > 20);

select h.nome as hospital, count(distinct d.coddoente) as num_doentes, count(a.codanalise) as num_analises
from hospitais h
left join doentes d on h.codhospital = d.codhospital
left join analises a on d.coddoente = a.coddoente
group by h.nome
order by num_analises desc;

