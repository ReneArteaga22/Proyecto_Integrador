use egogym;

/*CONSULTAS DEL LADO DEL CLIENTE
 1.Buscar citas disponibles en determinada fecha para determinado servicio*/
select * from citas
inner join servicios_empleados on citas.serv_emp=servicios_empleados.id_empserv
inner join servicios on servicios_empleados.servicio=servicios.codigo
where citas.estado='cancelada' or 'completada'
and servicios.nombre = 'fisioterapia'
and citas.fecha = '2023-06-28';

  /*2.Buscar el perfil de determinado empleado. (foto, nombre de persona y servicio que brinda)*/
select empleado.foto, persona.nombre, servicios.nombre from persona
inner join empleado on persona.id_persona=empleado.id_empleado
inner join servicios_empleados on empleado.id_empleado= servicios_empleados.empleado
inner join servicios on servicios_empleados.servicio=servicios.codigo
where persona.nombre = 'Kiara';

/*BUSCA TODOS LOS USUARIOS QUE SON EMPLEADOS*/
select persona.nombre from persona
inner join empleado on persona.id_persona=empleado.id_empleado;

/*3.BUSCAR O VISUALIZAR SU PROPIO HISTORIAL DE CITAS*/
 select citas.fecha, citas.hora, servicios.nombre from citas  inner join 
 servicios_empleados on citas.serv_emp = servicios_empleados.id_empserv
 inner join servicios on servicios_empleados.servicio = servicios.codigo
 where cliente = 100;
 
/*3.BUSCAR O VISUALIZAR SU PROPIO HISTORIAL DE CLASES*/
select citas_spin.fecha, clases.dia, clases.hora from persona
inner join cliente on persona.id_persona=cliente.id_cliente
inner join citas_spin on cliente.id_cliente=citas_spin.cliente
inner join clases on citas_spin.clase=clases.id_clase
where persona.nombre= 'Anahi';;

/*CONSULTAS PARA EL LADO DEL EMPLEADO
1.Buscar el perfil de determinado cliente. (datos de cliente y su ficha medica)*/



/*- 2.citas agendadas para cierto servicio citas agendadas para cierta fecha para determinado empleado.*/
select * from citas 
where serv_emp=2202 and fecha between '2023-06-01' and '2023-06-30'
and estado = 'confirmada';

/*- 3. citas agendadas para clases agendadas para cierta fecha*/
select * from citas_spin
where fecha between '2023-07-01' and '2023-07-31'
and estado= 'confirmada';


/*LADO DE LA RECEPCIONISTA
1. citas disponibles en determinada fecha para determinado servicio.*/

/*2. citas agedadas para determinada fecha para determinado servicio.*/

/*3. buscar determinado cliente con nombre o id de cliente.*/

/*4. buscar determinado empleado con nombre o id de empleado.*/


  select * from persona;
 SELECT * FROM empleado;
 select * from recepcionista;
 select * from entrenador;
 select * from fisioterapeuta;
 select * from nutricionista;
  select * from servicios_empleados;
  select * from servicios;
SELECT * FROM CLIENTE;
  select * from plan;
  select * from citas;
select * from citas_spin;
  select * from ficha_nutri;
  select * from ficha_fisio;
  select * from clases;

/*CONSULTAS 28/06/2023*/
select id_empleado from empleado 
inner join persona on empleado.id_empleado=persona.id_persona
where nombre = 'Rene';