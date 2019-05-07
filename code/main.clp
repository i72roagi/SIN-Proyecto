(defrule start_and_load ; Esta función se ejecuta primero debido a la prioridad, y carga los demás archivos .clp
	(declare (salience 1000))
=>
	(load variables.clp)
	(load hechos.clp)
	(load reglas.clp)
)

(defrule desea_hacer
	(declare (salience 20))
=>
	(printout t "Indique qué desea realizar, si 'ganar', 'perder' o 'mantener' peso")
	(assert desea (read))
)

(defrule introduce_datos
	(declare (salience 10))
=>
	(printout t "Se le realizará un test con el fin de conocer los causantes de su peso y decidir qué necesita para lograr su objetivo" crlf "Si no desea responder alguna pregunta, márquela con un 0" crlf)
)