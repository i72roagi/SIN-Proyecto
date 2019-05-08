(defrule poco_deporte_buena_alimentacion_perder_peso
	(desea perder)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 1)&:(<= ?deporte 3))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder perder peso debería rebajar un poco la cantidad de alimentos que toma, una bajada de alrededor de 200KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte para poder reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder perder peso debería rebajar un poco la cantidad de alimentos que toma, una bajada de alrededor de 300KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte para poder reducir la grasa."))
	)
)

(defrule deporte_normal_buena_alimentacion_perder_peso
	(desea perder)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 4)&:(<= ?deporte 6))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder perder peso debería rebajar un poco la cantidad de alimentos que toma, una bajada de alrededor de 100KCal. Igualmente, realiza deporte con moderación, por lo que por ahí vas bien, aunque siempre que puedas deberías intentar realizar deporte con mas frecuencia."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder perder peso debería rebajar un poco la cantidad de alimentos que toma, una bajada de alrededor de 200KCal. Igualmente, realiza deporte con moderación, por lo que por ahí vas bien, aunque siempre que puedas deberías intentar realizar deporte con mas frecuencia."))
	)
)

(defrule mucho_deporte_buena_alimentacion_perder_peso
	(desea perder)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 7)&:(<= ?deporte 9))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder perder peso debería rebajar un poco la cantidad de alimentos que toma, una bajada de alrededor de 50KCal. Igualmente, realiza mucho deporte, lo cual es bueno para reducir la grasa sobrante."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder perder peso debería rebajar un poco la cantidad de alimentos que toma, una bajada de alrededor de 100KCal. Igualmente, realiza mucho deporte, lo cual es bueno para reducir la grasa sobrante."))
	)
)

(defrule poco_deporte_mala_alimentacion_perder_peso
	(desea perder)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 1)&:(<= ?deporte 3))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder perder peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta rebajar la cantidad ingerida unas 200KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte para poder reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder perder peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta rebajar la cantidad ingerida unas 300KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte para poder reducir la grasa."))
	)
)

(defrule deporte_normal_mala_alimentacion_perder_peso
	(desea perder)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 4)&:(<= ?deporte 6))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder perder peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta rebajar la cantidad ingerida unas 100KCal. Igualmente, realiza deporte con moderación, por lo que por ahí vas bien, aunque siempre que puedas deberías intentar realizar deporte con mas frecuencia."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder perder peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta rebajar la cantidad ingerida unas 200KCal. Igualmente, realiza deporte con moderación, por lo que por ahí vas bien, aunque siempre que puedas deberías intentar realizar deporte con mas frecuencia."))
	)
)

(defrule mucho_deporte_mala_alimentacion_perder_peso
	(desea perder)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 7)&:(<= ?deporte 9))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder perder peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta rebajar la cantidad ingerida unas 50KCal. Igualmente, realiza mucho deporte, lo cual es bueno para reducir la grasa sobrante."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder perder peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta rebajar la cantidad ingerida unas 100KCal. Igualmente, realiza mucho deporte, lo cual es bueno para reducir la grasa sobrante."))
	)
)