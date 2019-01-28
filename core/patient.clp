(defrule read_patient_info "Reads in patient info"
=>
(printout t "---------Step 1 is to get to know your patient by getting their information-------------" crlf)
(printout t "Enter patient Name" crlf)
(bind ?name (readline))
(printout t "Enter patient Age" crlf)
(bind ?age (readline))
(printout t "Enter patient Sex" crlf)
(bind ?sex (readline))
(printout t "Enter patient Occupation" crlf)
(bind ?occupation (readline))
(assert (patient
		(name ?name)
	    (age ?age)
        (sex ?sex)
	    (occupation ?occupation))
	    )
)