(defrule read_doctor_observations "Reads the patient symptoms"
=>
(printout t "--------------Step 3 is to observe your patient----------------------------------------" crlf)
(bind ?observation "")
(printout t "
-droopy eyelids
-bloodshot appearance of the eye
-an opaque appearance to the eye
-a squint (strabismus)
-excessive tearing
-Patient is sensitive to light and glare
-trauma to the area around the eye
-an inverted eyelid
-swelling or bulging of certain sections of the eye
-puffiness around the eye
-large scratches on the cornea
-inflammation of eyelash follicles and styes
-other" crlf)
(printout t "Type the name as it appears above or type others or DONE" crlf)
(bind ?observation (readline))
(while (not (eq (str-compare ?observation "DONE") 0))

(assert (observation(name ?observation)))
(bind ?observation (readline))

)
)