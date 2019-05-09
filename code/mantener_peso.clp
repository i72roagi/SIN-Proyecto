(defrule poco_deporte_buena_alimentacion_mantener_peso
	(desea mantener)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 1)&:(<= ?deporte 3))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder mantener peso debería mantener su buena alimentación, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza poco deporte, debería aumentar la cantidad con moderación, para ejercitar tu cuerpo y mantener su peso actual."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder mantener peso debería mantener su buena alimentación, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza poco deporte, debería aumentar la cantidad con moderación, para ejercitar tu cuerpo y mantener su peso actual."))
	)
)

(defrule deporte_normal_buena_alimentacion_mantener_peso
	(desea mantener)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 4)&:(<= ?deporte 6))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder mantener peso debería mantener su buena alimentación, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza deporte con moderación, debería seguir realizándolo sin problema, y si viera que su peso desciende, baje la cantidad de deporte que realize."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder mantener peso debería mantener su buena alimentación, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza deporte con moderación, debería seguir realizándolo sin problema, y si viera que su peso desciende, baje la cantidad de deporte que realize."))
	)
)

(defrule mucho_deporte_buena_alimentacion_mantener_peso
	(desea mantener)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 7)&:(<= ?deporte 9))
	(alimentacion buena)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC un poco alto, para poder mantener peso debería mantener su buena alimentación, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte lo suficiente hasta una cantidad normal."))
	
	else 
		(assert (resultados "Usted tiene una alimentación buena y tiene un IMC normal, para poder mantener peso debería mantener su buena alimentación, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte lo suficiente hasta una cantidad normal."))
	)
)

(defrule poco_deporte_mala_alimentacion_mantener_peso
	(desea mantener)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 1)&:(<= ?deporte 3))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder mantener peso debería mejorar su dieta, comiendo más equilibrado, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza poco deporte, debería aumentar la cantidad con moderación, para ejercitar tu cuerpo y mantener su peso actual."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder mantener peso debería mejorar su dieta, comiendo más equilibrado, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza poco deporte, debería aumentar la cantidad con moderación, para ejercitar tu cuerpo y mantener su peso actual."))
	)
)

(defrule deporte_normal_mala_alimentacion_mantener_peso
	(desea mantener)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 4)&:(<= ?deporte 6))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder mantener peso debería mejorar su dieta, comiendo más equilibrado, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza deporte con moderación, debería seguir realizándolo sin problema, y si viera que su peso desciende, baje la cantidad de deporte que realize."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder mantener peso debería mejorar su dieta, comiendo más equilibrado, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza deporte con moderación, debería seguir realizándolo sin problema, y si viera que su peso desciende, baje la cantidad de deporte que realize."))
	)
)

(defrule mucho_deporte_mala_alimentacion_mantener_peso
	(desea mantener)
	(deporte ?deporte&:(numberp ?deporte)&:(>= ?deporte 7)&:(<= ?deporte 9))
	(alimentacion mala)
	(imc ?imc)
=>
	(if (>= ?imc 25) then
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC un poco alto, para poder mantener peso debería mejorar su dieta, comiendo más equilibrado, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte lo suficiente hasta una cantidad normal."))
	
	else 
		(assert (resultados "Usted tiene una alimentación mala y tiene un IMC normal, para poder mantener peso debería mejorar su dieta, comiendo más equilibrado, sin realizar excesos de comida e intentando evitar cualquier alimento hipercalórico. Igualmente, realiza mucho deporte, debería rebajar la cantidad de deporte lo suficiente hasta una cantidad normal."))
	)
)
