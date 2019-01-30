(defrule read_patient_symptoms "Reads the patient symptoms"
=>
(printout t "--------------Step 2 is to get the patient symptoms---------------------------------" crlf)
(bind ?symptom "")
(printout t "
*tearing
*redness
*itching
*oozing
*pain
*swelling
*injuries
*crusting of the eye
*blurred vision 
*loss of vision
*loss of night vision
*cloudy vision
*poor color perception
*halos around bright light
*cannot clearly see close objects and small print.
*the presence of floaters
*flu-like symptoms
*sinus infection
*eyes aren’t lined up with each other when you look at something
*sensitivity to light
*painful 
*lazy eye
*and the wearing of contact lenses.
*other" crlf)
(printout t "Type the name as it appears above or type others or DONE" crlf)
(bind ?symptom (readline))
(while (not (eq (str-compare ?symptom "DONE") 0))

(assert (symptom(name ?symptom)))
(bind ?symptom (readline))

)
)
