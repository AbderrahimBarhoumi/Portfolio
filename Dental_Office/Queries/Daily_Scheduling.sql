--Create a mixed query for daily usage 
SELECT 
      p.full_name,
	  p.first_appointment,
	  t.treatment_name as treatment_taken,
	  a.appointment_date,
	  a.time as appointment_time,
	  a.status
FROM 
    appointments a 
Join
    patients p ON a.patient_id = p.patient_id
Join 
    treatments t ON a.treatment_ref = t.treatment_ref
	
where a.appointment_date = CURRENT_DATE
ORDER BY appointment_date, time;
