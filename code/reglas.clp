(defrule introduce_sexo
	(declare (salience 3))
=>
	(printout t "Introduzca su sexo, siendo posibles 'hombre' o 'mujer'" crlf)
	(assert (sexo (read)))
	(cls)
)

(defrule introduce_edad
	(declare (salience 2))
=>
	(printout t "Introduzca su edad, en cifras" crlf)
	(assert (edad (read)))
	(cls)
)

(defrule introduce_enfermedad
	(declare (salience 1))
=>
	(printout t "¿Padece de alguna enfermedad, como 'hipertiroidismo' o 'hipotiroidismo'?" crlf)
	(assert (enfermedad (read)))
	(cls)
)

(defrule introduce_alimenticio
=>
	(printout t "Introduzca su tipo de alimentación, siendo 1 comida basura y 9 dieta sana" crlf)
	(assert (alimentacion (read)))
	(cls)
)

(defrule introduce_modo_vida
=>
	(printout t "Introduzca su modo de vida, siendo 1 vida sedentaria y 9 deportista de élite" crlf)
	(assert (vida (read)))
	(cls)
)

(defrule introduce_gases
=>
	(printout t "Introduzca su habitualidad al tomar bebidas alcohólicas y/o con gases, siendo 1 nada habitual  y 9  muy habitual" crlf)
	(assert (gases (read)))
	(cls)
)

(defrule calcular_suma
	?al <- (alimentacion ?alimentacion&:(numberp ?alimentacion))
	?ga <- (gases ?gases&:(numberp ?gases))
	?vi <- (vida ?vida&:(numberp ?vida))
=>
	(bind ?suma (+ ?alimentacion ?gases ?vida))
	(retract ?al ?ga ?vi)
	(assert (resultados ?suma))
)

(defrule imprime_resultados
	(resultados ?str_resultados)
=>
	(printout t "El resultado es " ?str_resultados crlf)	
)