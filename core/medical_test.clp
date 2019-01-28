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