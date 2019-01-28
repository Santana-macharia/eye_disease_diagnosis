
(defrule do_tonometry "decides whether to do a tonometry test"
(symptom (name "tearing"))
(observation(name "excessive tearing"))
=>
(printout t "Carry out a tonometry test and record the time taken to wet" crlf)
(printout t "
*normal
*takes longer than normal" crlf)
(bind ?tonometry_result (readline))
(assert (tonometry_result(result ?tonometry_result)))
)

(defrule read_patient_history "Reads the patient History"
=>
(printout t "--------------Step 4 is to get the patient Medical Histrory Prexisting Condition----------------------------------------" crlf)
(bind ?history (readline))
(assert (histroy(pre_existing ?history)))
)




(defrule read_doctor_observations "reads doctor's observations"
=>
(bind ?observation (readline))
(assert (observation(name ?observation)))
)


(defrule guide_observation "Tells  the doctor what to look at depending on the symptoms"
(symptom (name "tearing"))
=>
(printout t "Observe the patient eyes for amount of tearing" crlf)
(printout t "
-droopy eyelids
-bloodshot appearance of the eye
-an opaque appearance to the eye
-a squint (strabismus)
-excessive tearing
-trauma to the area around the eye
-an inverted eyelid
-swelling or bulging of certain sections of the eye
-puffiness around the eye
-large scratches on the cornea
-inflammation of eyelash follicles and styes
-other" crlf)
(printout t "Type the name as it appears above or type others" crlf)
)

(defrule doctor_observations "Reads the doctor observations"
=>
(printout t "--------------Step 3 is to observe your patient----------------------------------------" crlf)
)

(defrule read_patient_symptoms "Reads the patient symptoms"
=>
(printout t "--------------Step 2 is to get the patient symptoms----------------------------------------" crlf)
(printout t "
*tearing 
*blurred vision 
*loss of vision
*injuries to the eye
*the presence of floaters
*redness and pain in the eye
*cloudy vision
*flu-like symptoms
*sinus infection
*sensitivity to light
*possibility of being diabetic
*swelling or itchiness around the eyes
*painful lumps
*discharges from the eye
*skin irritation around the eye
*and the wearing of contact lenses.
*other symptoms" crlf)
(printout t "Type the name as it appears above or type others" crlf)

(bind ?symptom (readline))
(assert (symptom(name ?symptom)))
)


(defrule read_patient_info "Reads in patient info"
=>
(printout t "-------------Step 1 is to get to know your patient by getting their information-------------" crlf)
(printout t "Enter patient Name" crlf)
(bind ?name (readline))
(printout t "Enter patient Age" crlf)
(bind ?age (readline))
(printout t "Enter patient Sex" crlf)
(bind ?sex (readline))
(printout t "Enter patient Occupation" crlf)
(bind ?occupation (readline))
(assert (patient(name ?name)
	     (age ?age)
                     (sex ?sex)
	     (occupation ?occupation)))
)
(defrule welcome_message "welcomes user"
=>
(printout t "-------------Welcome to the ***EYE DISEASE DIAGNOSIS SYSTEM***-------------" crlf)
)
