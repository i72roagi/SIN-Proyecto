(defrule start_and_load ; Esta función se ejecuta primero debido a la prioridad, y carga los demás archivos .clp
	(declare (salience 1000))
=>
	(load variables.clp)
	(load hechos.clp)
	(load reglas.clp)
)

(defrule introduce_datos
	(declare (salience 10))
=>
	(printout t "Introduzca los condicionantes que desee evaluar de la lista" crlf "(Forma de vida, cantidad de deporte, hábitos alimenticios)" crlf)
)