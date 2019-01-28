(defrule load_core "Loads the program core"
=>
(printout t "Preparing to load the EYE DISEASE DIAGNOSIS core" crlf)
(load "core/templates.clp")
(printout t "EYE DISEASE DIAGNOSIS is ready" crlf)
(load "core/diagnosis_steps.clp")
(load "core/diagnose.clp")
)