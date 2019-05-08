(defrule start_and_load ; Esta función se ejecuta primero debido a la prioridad, y carga los demás archivos .clp
	(declare (salience 1000))
=>
	(load hechos.clp)
	(load reglas.clp)
	(retract *)
)

(deffunction cls
"Deja un espacio en la terminal, meramente estético"
()
(printout t crlf crlf crlf crlf crlf)
)

(defrule desea_hacer
	(declare (salience 20))
=>
	(printout t "Indique qué desea realizar, si 'ganar', 'perder' o 'mantener' peso" crlf)
	(assert (desea (read)))
	(cls)
)

(defrule introduce_datos
	(declare (salience 10))
=>
	(printout t "Se le realizará un test con el fin de conocer los causantes de su peso y decidir qué necesita para lograr su objetivo" crlf crlf)
)