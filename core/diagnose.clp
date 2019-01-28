(defrule gloucoma_test_80pct "This tests whether the disease is gloucoma" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(medical_history(pre_existing "diabetic"))
=>
(assert (diagnosis(name gloucoma_80pct)))
(printout t "80% chance patient has GLOUCOMA" crlf)
)

(defrule gloucoma_test_60pct "This tests whether the disease is gloucoma with 60% confidence" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(not (medical_history(pre_existing "diabetic")))
=>
(assert (diagnosis(name gloucoma_60pct)))
(printout t "60% chance patient has GLOUCOMA, recommend diabetic test" crlf)
)



(defrule cataract "This tests cataract disease"
(symptom(name "poor color perception"|"loss of night vision"|"blurred vision"|"halos around bright light"))
(observation (name "Patient is sensitive to light and glare"))
(slit_lampt_result)
=>
(assert (diagnosis(name cataract)))
(printout t "Patient has CATARACT" crlf)
)

