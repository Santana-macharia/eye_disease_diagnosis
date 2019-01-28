(defrule do_slit_lampt "decides whether to do a slit lamp test"
(symptom(name "poor color perception"|"loss of night vision"|"blurred vision"|"halos around bright light"))
(observation (name "Patient is sensitive to light and glare"))
=>
(printout t "Carry out a slit lamp test and record result" crlf)
(printout t "
*positive
*negative" crlf)
(bind ?slit_lamp_result (readline))
(assert (slit_lamp_result(result ?slit_lamp_result)))
)


(defrule do_slit_lampt "decides whether to do a slit lamp test"
(symptom(name "poor color perception"|"loss of night vision"|"blurred vision"|"halos around bright light"))
(observation (name "Patient is sensitive to light and glare"))
=>
(printout t "Carry out a slit lamp test and record result" crlf)
(printout t "
*positive
*negative" crlf)
(bind ?slit_lamp_result (readline))
(assert (slit_lamp_result(result ?slit_lamp_result)))
)



(defrule do_tonometry "decides whether to do a tonometry test"
(symptom (name "tearing"))
(observation(name "excessive tearing"))
=>
(printout t "Carry out a tonometry test and record the time taken to wet" crlf)
(printout t "
*normal
*longer than normal" crlf)
(bind ?tonometry_result (readline))
(assert (tonometry_result(result ?tonometry_result)))
)


(defrule prmpt ""
=>
(printout t "---------------Step 5 is to carry out a medical test------------------------------------" crlf)
)