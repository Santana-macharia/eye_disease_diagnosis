(defrule read_patient_history "Reads the patient History"
=>
(printout t "--------------Step 4 is to get Prexisting Medical Conditions---------------------------------" crlf)
(bind ?history (readline))
(while (not (eq (str-compare ?history "DONE") 0))

(assert (medical_history(pre_existing ?history)))
(bind ?history (readline))
)
)