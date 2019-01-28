(defrule gloucoma_test_80pct "This tests whether the disease is gloucoma" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(medical_history(pre_existing "diabetic"))
=>
(assert (diagnosis(name gloucoma_80pct)))
(printout t "80pct chance it is GLOUCOMA" crlf)
)