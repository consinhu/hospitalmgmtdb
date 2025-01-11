use hospitaldb;

-- -----------------------------------------------------
-- Basic Queries
-- -----------------------------------------------------
# listing all patients
select * from Patients;
##Output (first 3):
# 1 Maxine Smith 2008-06-04 Female 4453952300 maxine0@example.com 706 Random St
# 2 Joan Johnson 1979-06-08 Other 4412994188 joan1@example.com 567 Random St
# 3 Sarah Peck 1959-09-26 Female 4389588471 sarah2@example.com 770 Random St

# finding all doctors specializing in surgery
select FirstName, LastName, Specializations
from Doctors
where Specializations = 'Surgery';
## Output:
 # Lillian Whitlock
 # Alex Grace
 # Robert Madden
 # Jennifer White
 # Lillian Robbins
 # Christina Whitlock
 
# listing all appointments for a specific date
select * from Appointments
where AppointmentDate = '2023-05-04';
## Output (1 row returned):
 # AppointmentID PatientID DoctorID AppointmentDate Appointmenttime Status
 # 4             3         21       2023-05-04      16:33:00        Cancelled

-- -----------------------------------------------------
-- Aggregate Queries
-- -----------------------------------------------------
#counting total number of patients
select count(*) as TotalPatients
from Patients;
# Output: 100

#finding number of appointments for each doctor
select DoctorID, count(*) as numofAppointments
from Appointments
group by doctorID;
## Output(first 3):
 # DoctorID: 1 numofAppointments: 1
 # DoctorID: 3 numofAppointments: 1
 # DoctorID: 4 numofAppointments: 1
 
#find most common diagnosis
select Diagnosis, count(*) as frequency
from MedicalRecords
group by Diagnosis
order by frequency desc
limit 1;
## Output: Acute Respiratory Infections

-- -----------------------------------------------------
-- Joins
-- -----------------------------------------------------
# listing appointments with patient and doctor details
select 
	a.AppointmentID,
    concat(p.FirstName, ' ', p.LastName) as PatientName, 
    concat(d.FirstName, ' ', d.LastName) as DoctorName, 
    a.AppointmentDate, 
    a.AppointmentTime
from Appointments a
join Patients p on a.PatientId = p.PatientID
join Doctors d on a.DoctorID = d.DoctorID;
## Output (first 3):
 # 1 Adam Smith Lillian Whitlock 2023-05-02 16:25:00
 # 2 Paul Smith Alex Grace 2024=03=02 13:47:00
 # 3 Maxine Davis Robert Madden 2023-01-17 17:48:00
 
# listing patient full name, diagnosis, treatment, and appointment date for cancelled appointments
select
	concat(FirstName, ' ', LastName) as FullName,
    r.Diagnosis, 
    r.Treatment,
    AppointmentDate
from Patients inner join MedicalRecords r on Patients.PatientID = r.PatientID inner join Appointments on r.PatientID = Appointments.PatientID
where Appointments.Status = 'Cancelled';
## Output (7 rows returned): 
 # Paul Garcia Acute Pharyngitis Antibiotics 2023-10-10
 # Gregor Brown Conditions of the spine and back Physiotherapy 2023-01-19
 # Adam Brown Common Cold Topical Ointments 2024-06-19
 # Adam Brown Acute Respiratory Infections Topical Ointments 2024-06-19
 # Adam Garcia Diabetes Vaccine 2023-05-10
 # Adam Brown Common Cold Topical Ointments 2024-02-08
 # Adam Brown Acute Respiratory Infections Topical Ointments 2024-02-08
 
-- -----------------------------------------------------
-- Advanced Queries
-- -----------------------------------------------------
# list appointments of doctors who have their appointment with the last 30 days
select 
	PatientID, 
    FirstName,
    LastName
from
	Patients
where 
	PatientID in (select PatientID from Appointments
    where AppointmentDate >= DATE_SUB(CURDATE(), interval 90 day)
);
## Output:
 # 50 Paul Smith
 
# retrieving names of patients being treated by doctors specializing in Surgery
select 
	p.FirstName,
    p.LastName
from Patients p
where 
	p.PatientID in (
		select a.PatientID
        from Appointments a
        where a.DoctorID in (
			select d.DoctorID
            from Doctors d
            where d.Specializations like "%Surgery%"
		)
	);
    ## Output:
     # Adam Smith
     # Delia Day
     # Sarah Grey
     # Paul Smith
     # Joan Vega
     # Lauren Brown
     # Frederik Smith
     # Adam Ramirez
     
-- -----------------------------------------------------
-- Report Queries
-- -----------------------------------------------------
# Monthly appointment report
select 
	date_format(AppointmentDate, '%Y-%m') as month,
    count(AppointmentID) as TotalAppointments
from
	Appointments
group by
	date_format(AppointmentDate, '%Y-%m')
order by 
	month asc;
## Output(18 rows returned): 
 # 2023-01 2 
 # 2023-02 4
 # 2023-04 2
 # 2023-05 3
 # 2023-06 3


# Patient Demographics Report 
select 
	Gender, 
    count(PatientID) as TotalPatients
from 
	Patients
group by
	Gender
order by
	TotalPatients desc;
## Output: 
 # Female 34
 # Male 34
 # Other 32
 