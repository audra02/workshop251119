Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

ValueSet: QuadrantVS
Id: quadrant
Title: "Quadrant (VIK / AIK / AVK / VVK)"
Description: "Breast quadrants."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#110496004 "Structure of upper outer quadrant of right breast (body structure)"
* $sct#110497008 "Structure of lower outer quadrant of right breast (body structure)"
* $sct#110495000 "Structure of lower inner quadrant of right breast (body structure)"
* $sct#110494001 "Structure of upper inner quadrant of right breast (body structure)"

* $sct#110501003 "Structure of upper outer quadrant of left breast (body structure)"
* $sct#110502005 "Structure of lower outer quadrant of left breast (body structure)"
* $sct#110500002 "Structure of lower inner quadrant of left breast (body structure)"
* $sct#110499006 "Structure of upper inner quadrant of left breast (body structure)"

ValueSet: NippleInclusionVS
Id: nipple-inclusion
Title: "Nipple inclusion (right/left)"
Description: "In which breast there is a nipple inclusion."
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#15953221000119100 "Retraction of left nipple (finding)"
* $sct#15953181000119108 "Retraction of right nipple (finding)"

ValueSet: YesNoVS
Id: yes-no
Title: "Yes or no"
Description: "Yes/No value set"
* ^language = #en
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#373067005 "No (qualifier value)"
* $sct#373066001 "Yes (qualifier value)"

Profile: SkinFormations
Parent: LTBaseObservation
Id: skin-formations
Title: "Skin formations"
Description: "This profile contains skin formations."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#297960002 "Mass of skin (finding)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from QuadrantVS (required)
* component ..0

Profile: Scars
Parent: LTBaseObservation
Id: scars
Title: "Scars"
Description: "This profile contains scars."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#442523003 "Surgical scar finding (finding)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from QuadrantVS (preferred)
* component ..0

Profile: NippleInversion
Parent: LTBaseObservation
Id: nipple-inversion
Title: "Nipple inversion"
Description: "This profile contains nipple inversion (right/left)."
* ^status = #draft
* ^language = #en
* ^version = "1.0.0"
* ^date = "2025-10-25T19:10:07+03:00"
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* category = $observation-category#exam "Exam"
* code = $sct#82231009 "Inversion of nipple (disorder)"
* subject 1..
* subject only Reference(LTBasePatient)
* effective[x] 1..
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from NippleInclusionVS (preferred)
* component ..0

Instance: example-skin-formation-yes
InstanceOf: SkinFormations
Usage: #example
Title: "Example of skin formation - yes"
Description: "Example showing there is a skin formation."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#297960002 "Mass of skin (finding)"
* subject = Reference(example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* note.text = "Patient reports there is a skin formation."