(defrule gloucoma_test_80pct "This tests whether the disease is gloucoma" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(medical_history(pre_existing "diabetic"))
=>
(assert (diagnosis(name gloucoma_80pct)))
(printout t "80% chance the patient has GLOUCOMA" crlf)
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

(defrule cataract_test "This tests cataract disease"
(symptom(name "poor color perception"|"loss of night vision"|"blurred vision"|"halos around bright light"))
(observation (name "Patient is sensitive to light and glare"))
(slit_lamp_result(result "positive"))
=>
(assert (diagnosis(name cataract)))
(printout t "Patient has CATARACT" crlf)
)

(defrule macular_degeneration_test "This tests Macular degeneration disease"
(symptom(name "loss of vision"))
(patient (age "55"))
(goldmann_perimeter_result(result "positive"))
=>
(assert (diagnosis(name retinal_degeneration)))
(printout t "Patient has Macular degeneration" crlf)
)

(defrule diabetic_retinopathy_test "This tests Diabetic retinopathy disease"
(symptom(name "redness"|"pain"|"itching"|"oozing"|"swelling"))
(medical_history (pre_existing "diabetic"))
(ophthalmoscopy_result(result "positive"))
=>
(assert (diagnosis(name diabetic_retinopathy)))
(printout t "Patient has Diabetic retinopathy" crlf)
)

(defrule keratoconus_test "This tests Keratoconus disease"
(symptom(name "loss of vision"|""))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name keratoconus)))
(printout t "Patient has Keratoconus" crlf)
)

(defrule  dry_eye_test "This tests Dry eye disease"
(symptom(name "loss of vision"))
(patient (age "55"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name dry_eye)))
(printout t "Patient has Dry eye" crlf)
)

(defrule  conjunctivitis_pinkeye_test "This tests Conjunctivitis (pinkeye) disease"
(symptom(name "redness and pain in the eye"|"skin irritation around the eye"|"swelling or itchiness around the eyes"))
(patient (age "55"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name dry_eye)))
(printout t "Patient has Conjunctivitis (pinkeye)" crlf)
)
(defrule  Amblyopia_test "This tests Amblyopia disease"
(symptom(name "eye fails to achieve normal visual acuity"|"young child has crossed eyes"|" if he or she cries or fusses when you cover one eye."))
(patient (age "5"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name Amblyopia)))
(printout t "Patient has Amblyopia (lazyeye)" crlf)
)
)
(defrule  Color_blindness_test "This tests Color blindness disease"
(symptom(name "eye fails to achieve normal visual acuity"|"young child has crossed eyes"|" if he or she cries or fusses when you cover one eye."))
(patient (age "5"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name Amblyopia)))
(printout t "Patient has Amblyopia (lazyeye)" crlf)
)
