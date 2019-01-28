(defrule run_diagnose "loads diagnosis"
=>
(load "core/diagnose.clp")
)


(defrule test_results "loads test results"
=>
(load "core/medical_test.clp")
)

(defrule load_history "loads medical history"
=>
(load "core/history.clp")
)

(defrule load_observation "loads symptoms"
=>
(load "core/observation.clp")
)

(defrule load_symptoms "loads symptoms"
=>
(load "core/symptoms.clp")
)

(defrule load_patient "loads patient"
=>
(load "core/patient.clp")
)

(defrule load_templates "loads templates"
=>
(printout t "...loading templates..." crlf)
(load "core/templates.clp")
)