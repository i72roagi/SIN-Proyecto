(defrule introduce_alimenticio
=>
	(printout t "Introduzca su tipo de alimentación, siendo 1 comida basura y 9 dieta sana" crlf)
	(assert alimentacion (read))
)

(defrule introduce_modo_vida
=>
	(printout t "Introduzca su modo de vida, siendo 1 vida sedentaria y 9 deportista de élite" crlf)
	(assert vida (read))
)