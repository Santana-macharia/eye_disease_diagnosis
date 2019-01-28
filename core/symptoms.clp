(defrule read_patient_symptoms "Reads the patient symptoms"
=>
(printout t "--------------Step 2 is to get the patient symptoms---------------------------------" crlf)
(bind ?symptom "")
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
*other" crlf)
(printout t "Type the name as it appears above or type others or DONE" crlf)
(bind ?symptom (readline))
(while (not (eq (str-compare ?symptom "DONE") 0))

(assert (symptom(name ?symptom)))
(bind ?symptom (readline))

)
)