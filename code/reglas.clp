(defrule introduce_peso
	(declare (salience 2))
=>
	(printout t "" crlf)
	(assert (peso (read)))
	(cls)
)

(defrule introduce_altura
	(declare (salience 1))
=>
	(printout t "" crlf)
	(assert (altura (read)))
	(cls)
)

(defrule introduce_proteinas
=>
	(printout t "Valora la alimentación que lleves, siendo 1 poco saludable y 9 muy saludable" crlf)
	(assert (proteinas (read)))
	(cls)
)

(defrule introduce_hidratos
=>
	(printout t "" crlf)
	(assert (hidratos (read)))
	(cls)
)

(defrule introduce_lipidos
=>
	(printout t "¿Con qué frecuencia suele tomar dulces o alimentos hipercalóricos?, siendo 1 poco habitual y 9 muy habitual" crlf)
	(assert (lipidos (read)))
	(cls)
)

(defrule introduce_deporte
=>
	(printout t "¿Con qué frecuencia suele realizar deporte?, siendo 1 poco frecuente y 9 muy frecuente" crlf)
	(assert (deporte (read)))
	(cls)
)

(defrule calcular_alimentacion
	(hidratos ?hidratos&:(numberp ?hidratos))
	(proteinas ?proteinas&:(numberp ?proteinas))
	(lipidos ?lipidos&:(numberp ?lipidos))
=>
	(bind ?alimentacion (+ (* ?hidratos * 0.5) (* ?lipidos 0.35) (* ?proteinas 0.15)))
	(assert (alimentacion ?alimentacion))
)

(defrule calcular_imc
	(peso ?peso&:(numberp ?peso))
	(altura ?altura&:(numberp ?altura))
=>
	(bind ?imc (/ ?peso (sqrt ?altura)))
	(assert (imc ?imc))
)

(defrule imprime_resultados
	(resultados ?str_resultados)
=>
	(printout t "El resultado es " ?str_resultados crlf)	
)