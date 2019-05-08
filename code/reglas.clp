(defrule introduce_peso
	(declare (salience 2))
=>
	(printout t "Introduzca su peso, en kg" crlf)
	(assert (peso (read)))
	(cls)
)

(defrule introduce_altura
	(declare (salience 1))
=>
	(printout t "Introduzca su altura, en centimetros" crlf)
	(assert (altura (read)))
	(cls)
)

(defrule introduce_proteinas
=>
	(printout t "¿Con qué frecuencia suele tomar alimentos cárnicos o pescados?, siendo 1 poco habitual y 9 muy habitual" crlf)
	(assert (proteinas (read)))
	(cls)
)

(defrule introduce_hidratos
=>
	(printout t "¿Con qué frecuencia suele tomar cereales o derivados de ellos?, siendo 1 poco habitual y 9 muy habitual" crlf)
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

; LIPIDOS

(defrule lipidos_pobre
	(lipidos ?lipidos&:(numberp ?lipidos)&:(>= ?lipidos 1)&:(<= ?lipidos 2))
=>
	(assert (lipidos_estado pobre))
)

(defrule lipidos_normal
	(lipidos ?lipidos&:(numberp ?lipidos)&:(>= ?lipidos 3)&:(<= ?lipidos 5))
=>
	(assert (lipidos_estado normal))
)

(defrule lipidos_exceso
	(lipidos ?lipidos&:(numberp ?lipidos)&:(>= ?lipidos 6)&:(<= ?lipidos 9))
=>
	(assert (lipidos_estado exceso))
)

; HIDRATOS

(defrule hidratos_pobre
	(hidratos ?hidratos&:(numberp ?hidratos)&:(>= ?hidratos 1)&:(<= ?hidratos 4))
=>
	(assert (hidratos_estado pobre))
)

(defrule hidratos_normal
	(hidratos ?hidratos&:(numberp ?hidratos)&:(>= ?hidratos 5)&:(<= ?hidratos 8))
=>
	(assert (hidratos_estado normal))
)

(defrule hidratos_exceso
	(hidratos ?hidratos&:(numberp ?hidratos)&:(= ?hidratos 9))
=>
	(assert (hidratos_estado exceso))
)

; PROTEINAS

(defrule proteinas_pobre
	(proteinas ?proteinas&:(numberp ?proteinas)&:(>= ?proteinas 1)&:(<= ?proteinas 3))
=>
	(assert (proteinas_estado pobre))
)

(defrule proteinas_normal
	(proteinas ?proteinas&:(numberp ?proteinas)&:(>= ?proteinas 4)&:(<= ?proteinas 7))
=>
	(assert (proteinas_estado normal))
)

(defrule proteinas_exceso
	(proteinas ?proteinas&:(numberp ?proteinas)&:(>= ?proteinas 8)&:(<= ?proteinas 9))
=>
	(assert (proteinas_estado exceso))
)

(defrule calcula_alimentacion_buena
	(lipidos_estado ?lipidos&:(eq ?lipidos normal))
	(hidratos_estado ?hidratos&:(eq ?hidratos normal))
	(proteinas_estado ?proteinas&:(eq ?proteinas normal))
=>
	(assert (alimentacion buena))
)

(defrule calcula_alimentacion_buena_lipidos_mal
	(lipidos_estado ?lipidos&:(or (eq ?lipidos exceso) (eq ?lipidos pobre)))
	(hidratos_estado ?hidratos&:(eq ?hidratos normal))
	(proteinas_estado ?proteinas&:(eq ?proteinas normal))
=>
	(assert (alimentacion buena))
)

(defrule calcula_alimentacion_buena_hidratos_mal
	(lipidos_estado ?lipidos&:(eq ?lipidos normal))
	(hidratos_estado ?hidratos&:(or (eq ?hidratos exceso) (eq ?hidratos pobre)))
	(proteinas_estado ?proteinas&:(eq ?proteinas normal))
=>
	(assert (alimentacion buena))
)

(defrule calcula_alimentacion_buena_proteinas_mal
	(lipidos_estado ?lipidos&:(eq ?lipidos normal))
	(hidratos_estado ?hidratos&:(eq ?hidratos normal))
	(proteinas_estado ?proteinas&:(or (eq ?proteinas exceso) (eq ?proteinas pobre)))
=>
	(assert (alimentacion buena))
)

(defrule calcula_alimentacion_mala
	(lipidos_estado ?lipidos&:(or (eq ?lipidos exceso) (eq ?lipidos pobre)))
	(hidratos_estado ?hidratos&:(or (eq ?hidratos exceso) (eq ?hidratos pobre)))
	(proteinas_estado ?proteinas&:(or (eq ?proteinas exceso) (eq ?proteinas pobre)))
=>
	(assert (alimentacion mala))
)

(defrule calcula_alimentacion_mala_lipidos_bien
	(lipidos_estado ?lipidos&:(eq ?lipidos normal))
	(hidratos_estado ?hidratos&:(or (eq ?hidratos exceso) (eq ?hidratos pobre)))
	(proteinas_estado ?proteinas&:(or (eq ?proteinas exceso) (eq ?proteinas pobre)))
=>
	(assert (alimentacion mala))
)

(defrule calcula_alimentacion_mala_hidratos_bien
	(lipidos_estado ?lipidos&:(or (eq ?lipidos exceso) (eq ?lipidos pobre)))
	(hidratos_estado ?hidratos&:(eq ?hidratos normal))
	(proteinas_estado ?proteinas&:(or (eq ?proteinas exceso) (eq ?proteinas pobre)))
=>
	(assert (alimentacion mala))
)

(defrule calcula_alimentacion_mala_proteinas_bien
	(lipidos_estado ?lipidos&:(or (eq ?lipidos exceso) (eq ?lipidos pobre)))
	(hidratos_estado ?hidratos&:(or (eq ?hidratos exceso) (eq ?hidratos pobre)))
	(proteinas_estado ?proteinas&:(eq ?proteinas normal))
=>
	(assert (alimentacion mala))
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
	(printout t ?str_resultados crlf)	
)