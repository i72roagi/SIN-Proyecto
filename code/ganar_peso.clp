(defrule poco_deporte_buena_alimentacion_ganar_peso
	(desea ganar)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 1)&:(<= ?deporte 3))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder ganar peso debería aumentar un poco la cantidad de alimentos que toma, una subida de alrededor de 200KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte, y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder ganar peso debería aumentar un poco la cantidad de alimentos que toma, una subida de alrededor de 100KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte, y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	)
)

(defrule deporte_normal_buena_alimentacion_ganar_peso
	(desea ganar)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 4)&:(<= ?deporte 6))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder ganar peso debería aumentar un poco la cantidad de alimentos que toma, una subida de alrededor de 300KCal. Igualmente, realiza deporte con moderación, debería enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder ganar peso debería aumentar un poco la cantidad de alimentos que toma, una subida de alrededor de 200KCal. Igualmente, realiza deporte con moderación, debería enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	)
)

(defrule mucho_deporte_buena_alimentacion_ganar_peso
	(desea ganar)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 7)&:(<= ?deporte 9))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder ganar peso debería aumentar un poco la cantidad de alimentos que toma, una subida de alrededor de 400KCal. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte, ya que tendrá el efecto contrario a lo que desea, y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder ganar peso debería aumentar un poco la cantidad de alimentos que toma, una subida de alrededor de 300KCal. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte, ya que tendrá el efecto contrario a lo que desea, y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	)
)

(defrule poco_deporte_mala_alimentacion_ganar_peso
	(desea ganar)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 1)&:(<= ?deporte 3))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder ganar peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta aumentar la cantidad ingerida unas 400KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder ganar peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta aumentar la cantidad ingerida unas 300KCal. Igualmente, realiza poco deporte, debería aumentar la cantidad de deporte y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	)
)

(defrule deporte_normal_mala_alimentacion_ganar_peso
	(desea ganar)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 4)&:(<= ?deporte 6))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder ganar peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta aumentar la cantidad ingerida unas 300KCal. Igualmente, realiza deporte con moderación, debería enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder ganar peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta aumentar la cantidad ingerida unas 200KCal. Igualmente, realiza deporte con moderación, debería enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	)
)

(defrule mucho_deporte_mala_alimentacion_ganar_peso
	(desea ganar)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 7)&:(<= ?deporte 9))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder ganar peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta aumentar la cantidad ingerida unas 200KCal. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte, ya que tendrá el efecto contrario a lo que desea, y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder ganar peso debería mejorar su dieta, comiendo más equilibrado, y si le hiciera falta aumentar la cantidad ingerida unas 100KCal. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte, ya que tendrá el efecto contrario a lo que desea, y enfocarlo a la musculación, para aumentar la cantidad de músculo y reducir la grasa."))
	)
)