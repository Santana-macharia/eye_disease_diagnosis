(defrule do_funduscopy_test "decides whether to do a Ophthalmoscopy (also called funduscopy) testing"
(symptom(name "redness"|"pain"|"itching"|"oozing"|"swelling"))
=>
(printout t "Carry out a Ophthalmoscopy (also called funduscopy) and record result" crlf)
(printout t "
*positive
*negative" crlf)
(bind ?ophthalmoscopy_result (readline))
(assert (ophthalmoscopy_result(result ?ophthalmoscopy_result)))
)

(defrule do_visual_field_test "decides whether to do a Visual field testing"
(symptom(name "loss of vision"|"loss of central vision"))
(patient (age "55"))
=>
(printout t "Carry out a Visual field test and record result" crlf)
(printout t "
*positive
*negative" crlf)
(bind ?visual_field_result (readline))
(assert (visual_field_result(result ?visual_field_result)))
)

(defrule do_goldman_perimeter "decides whether to do a retinal examination test"
(symptom(name "loss of vision"|"loss of central vision"))
(patient (age "55"))
=>
(printout t "Carry out a goldman perimeter test and record result" crlf)
(printout t "
*positive
*negative" crlf)
(bind ?goldmann_perimeter_result (readline))
(assert (goldmann_perimeter_result(result ?goldmann_perimeter_result)))
)

(defrule do_slit_lampt "decides whether to do a slit lamp test"
(symptom(name "poor color perception"|"loss of night vision"|"blurred vision"|"halos around bright light"))
(observation (name "Patient is sensitive to light and glare"))
=>
(printout t "Carry out a slit lamp test and record result" crlf)
(printout t "
*positive
*negative" crlf)
(bind ?slit_lamp_result (readline))
(assert (slit_lamp_result(result ?slit_lamp_result)))
)



(defrule do_tonometry "decides whether to do a tonometry test"
(symptom (name "tearing"))
(observation(name "excessive tearing"))
=>
(printout t "Carry out a tonometry test and record the time taken to wet" crlf)
(printout t "
*normal
*longer than normal" crlf)
(bind ?tonometry_result (readline))
(assert (tonometry_result(result ?tonometry_result)))
)


(defrule prmpt ""
=>
(printout t "---------------Step 5 is to carry out a medical test------------------------------------" crlf)
)