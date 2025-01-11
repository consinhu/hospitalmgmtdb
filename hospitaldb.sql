drop database if exists hospitalDB;
create database hospitalDB;
use hospitalDB;

drop table if exists Appointments;
drop table if exists MedicalRecords;
drop table if exists Patients;
drop table if exists Doctors;


-- -----------------------------------------------------
-- Table `Patients`
-- -----------------------------------------------------
create table Patients (
	PatientID int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(50),
    DOB date,
    Gender ENUM('Male', 'Female', 'Other'),
    Phone varchar(15),
    Email varchar(100), 
    Address text
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Doctors`
-- -----------------------------------------------------
create table Doctors (
	DoctorID int auto_increment primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Specializations varchar (100),
    Phone varchar(15),
    Email varchar(100),
    Availability boolean
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Appointments`
-- -----------------------------------------------------
create table Appointments (
	AppointmentID int auto_increment primary key,
    PatientID int,
    DoctorID int,
    AppointmentDate date,
    Appointmenttime time,
    Status ENUM('Scheduled', 'In Progress', 'Completed', 'Cancelled'),
    foreign key (PatientID) references Patients(PatientID),
    foreign key (DoctorID) references Doctors(DoctorID)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `MedicalRecords`
-- -----------------------------------------------------
create table MedicalRecords (
	RecordID int auto_increment primary key,
    PatientID int,
    DoctorID int,
    Diagnosis text,
    Treatment text,
    Prescription text,
    Date date, 
    foreign key (PatientID) references Patients(PatientID),
    foreign key (DoctorID) references Doctors(DoctorID)
) ENGINE = InnoDB;



INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Smith', '2008-06-04', 'Female', '4453952300', 'maxine0@example.com', '706 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Johnson', '1979-06-08', 'Other', '4412994188', 'joan1@example.com', '567 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Peck', '1959-09-26', 'Female', '4389588471', 'sarah2@example.com', '770 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Peck', '1940-03-26', 'Other', '0344764464', 'allen3@example.com', '619 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Brown', '1969-06-06', 'Other', '0097320448', 'lauren4@example.com', '421 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Grey', '2007-08-11', 'Male', '7699693147', 'allen5@example.com', '637 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Frederik', 'Johnson', '1995-04-04', 'Male', '0561609364', 'frederik6@example.com', '987 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Day', '2004-03-27', 'Male', '6883830328', 'joan7@example.com', '773 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Garcia', '2020-05-26', 'Other', '3564390058', 'adam8@example.com', '162 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Davis', '1982-03-05', 'Other', '0273751092', 'adam9@example.com', '712 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Davis', '1996-02-13', 'Male', '8752389518', 'allen10@example.com', '988 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('William', 'Garcia', '2000-07-13', 'Male', '8036911283', 'william11@example.com', '567 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Garcia', '1961-01-30', 'Male', '4500425987', 'sarah12@example.com', '982 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Ramirez', '1996-10-16', 'Male', '4050971178', 'gregor13@example.com', '279 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Ramirez', '1967-03-09', 'Other', '9046394624', 'allen14@example.com', '274 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Taylor', '2017-03-15', 'Male', '3743174562', 'allen15@example.com', '363 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Smith', '1963-10-13', 'Male', '1278632243', 'allen16@example.com', '176 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Garcia', '1970-09-19', 'Female', '3224950504', 'paul17@example.com', '331 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Delia', 'Day', '1991-02-02', 'Other', '6067107358', 'delia18@example.com', '409 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Garcia', '2005-09-29', 'Male', '8333929449', 'allen19@example.com', '356 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Alice', 'Vega', '1945-05-31', 'Other', '6027407448', 'alice20@example.com', '459 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Johnson', '1965-10-24', 'Other', '5318948337', 'paul21@example.com', '621 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Frederik', 'Smith', '1951-12-26', 'Female', '6068100108', 'frederik22@example.com', '436 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Vega', '2005-08-20', 'Male', '1014271711', 'paul23@example.com', '864 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Ramirez', '1947-12-21', 'Male', '9325424273', 'gregor24@example.com', '634 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Grey', '1991-09-27', 'Female', '9585346560', 'gregor25@example.com', '633 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Brown', '1974-08-19', 'Female', '0858161855', 'maxine26@example.com', '624 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Wild', '1953-10-31', 'Other', '0588171436', 'paul27@example.com', '867 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Miller', '1949-01-07', 'Female', '1152870981', 'joan28@example.com', '588 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Anderson', '1982-07-21', 'Other', '2603904917', 'lauren29@example.com', '762 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Anderson', '1958-02-04', 'Female', '8427611541', 'gregor30@example.com', '367 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Ramirez', '2010-04-28', 'Male', '6204843151', 'adam31@example.com', '910 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Day', '1966-06-05', 'Female', '4348482068', 'adam32@example.com', '815 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Davis', '1987-01-24', 'Male', '5127743390', 'allen33@example.com', '856 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Alice', 'Johnson', '1975-07-13', 'Female', '4023160181', 'alice34@example.com', '387 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('William', 'Johnson', '1969-08-03', 'Female', '9611878976', 'william35@example.com', '744 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Emily', 'Ramirez', '1964-06-13', 'Other', '0529660184', 'emily36@example.com', '713 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('William', 'Day', '1956-11-18', 'Other', '0821639315', 'william37@example.com', '926 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Vega', '1960-07-15', 'Other', '3913697378', 'paul38@example.com', '653 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Grey', '1956-01-21', 'Other', '1449706133', 'sarah39@example.com', '755 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Brown', '2012-08-30', 'Female', '0788332980', 'adam40@example.com', '984 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Vega', '1989-08-16', 'Female', '5382303779', 'joan41@example.com', '825 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Smith', '2004-05-30', 'Female', '3898330103', 'adam42@example.com', '956 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('William', 'Grey', '2012-11-05', 'Female', '7390804225', 'william43@example.com', '214 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Anderson', '1950-05-11', 'Female', '5895740264', 'sarah44@example.com', '701 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Brown', '2014-12-28', 'Other', '2330117842', 'gregor45@example.com', '783 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Delia', 'Day', '2001-01-04', 'Other', '1005561695', 'delia46@example.com', '291 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Vega', '2022-12-14', 'Male', '2211986237', 'joan47@example.com', '593 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Wild', '2002-05-14', 'Male', '7506269925', 'adam48@example.com', '183 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Smith', '1953-04-17', 'Female', '0465403865', 'paul49@example.com', '569 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Alice', 'Johnson', '1995-09-12', 'Female', '6043537328', 'alice50@example.com', '682 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Grey', '1971-04-02', 'Male', '2143498138', 'lauren51@example.com', '204 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Smith', '1969-09-21', 'Other', '7831794726', 'lauren52@example.com', '686 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Garcia', '1956-02-21', 'Other', '5976973668', 'sarah53@example.com', '198 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Davis', '1961-04-25', 'Other', '2703916758', 'maxine54@example.com', '709 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Day', '1975-01-05', 'Female', '7758107112', 'gregor55@example.com', '526 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Garcia', '1941-10-11', 'Male', '4426959489', 'adam56@example.com', '861 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Davis', '1977-12-11', 'Male', '0610489220', 'maxine57@example.com', '759 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Anderson', '1953-11-14', 'Male', '3827656103', 'paul58@example.com', '856 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Alice', 'Garcia', '1983-01-31', 'Female', '7993603770', 'alice59@example.com', '422 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Grey', '1962-10-30', 'Other', '5143882823', 'adam60@example.com', '592 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Davis', '1945-02-14', 'Male', '9397220349', 'maxine61@example.com', '264 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Taylor', '1976-04-23', 'Other', '7813671965', 'joan62@example.com', '605 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Davis', '1992-08-30', 'Other', '9357975305', 'adam63@example.com', '186 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Peck', '1947-02-16', 'Female', '9193885644', 'joan64@example.com', '901 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Garcia', '2000-08-11', 'Male', '4246544289', 'joan65@example.com', '657 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('William', 'Anderson', '1958-07-24', 'Other', '5884252165', 'william66@example.com', '315 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Delia', 'Ramirez', '1997-12-12', 'Other', '4515258529', 'delia67@example.com', '840 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Davis', '1958-11-18', 'Female', '4212655262', 'paul68@example.com', '721 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Vega', '1977-07-14', 'Male', '7685418560', 'lauren69@example.com', '318 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Johnson', '1989-09-20', 'Other', '3004925066', 'adam70@example.com', '679 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Frederik', 'Ramirez', '2012-06-24', 'Female', '5525649657', 'frederik71@example.com', '312 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Vega', '1997-01-31', 'Female', '6467212385', 'paul72@example.com', '473 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Smith', '2021-03-24', 'Other', '9099757158', 'paul73@example.com', '959 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Ramirez', '1952-09-25', 'Female', '1039130899', 'maxine74@example.com', '851 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('John', 'Brown', '1984-03-05', 'Male', '4936349966', 'john75@example.com', '528 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Wild', '1940-09-04', 'Male', '0995419172', 'sarah76@example.com', '247 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Grey', '1981-03-14', 'Female', '1568418837', 'maxine77@example.com', '256 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Frederik', 'Day', '1995-04-19', 'Other', '6840850573', 'frederik78@example.com', '189 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Grey', '1999-06-18', 'Male', '3612656949', 'joan79@example.com', '252 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Paul', 'Davis', '1958-03-20', 'Female', '2461789923', 'paul80@example.com', '665 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Delia', 'Ramirez', '1965-06-27', 'Male', '1267408762', 'delia81@example.com', '134 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Brown', '1953-01-23', 'Male', '2756545970', 'gregor82@example.com', '271 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('John', 'Taylor', '1992-10-19', 'Female', '3346022080', 'john83@example.com', '643 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Anderson', '1981-02-16', 'Female', '8984778335', 'lauren84@example.com', '651 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Alice', 'Taylor', '2012-12-13', 'Male', '4267617909', 'alice85@example.com', '215 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Delia', 'Vega', '1966-01-02', 'Other', '5733150361', 'delia86@example.com', '330 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Lauren', 'Day', '2006-03-30', 'Other', '6640227269', 'lauren87@example.com', '835 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Gregor', 'Taylor', '1999-01-23', 'Male', '5563673246', 'gregor88@example.com', '760 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Taylor', '1955-04-27', 'Female', '1201853611', 'maxine89@example.com', '859 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Maxine', 'Smith', '1946-09-26', 'Male', '7323402624', 'maxine90@example.com', '422 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('John', 'Garcia', '1983-04-08', 'Female', '0358050855', 'john91@example.com', '773 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Sarah', 'Johnson', '1995-08-21', 'Male', '2525174780', 'sarah92@example.com', '451 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Joan', 'Vega', '2005-02-02', 'Male', '0338259021', 'joan93@example.com', '617 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Adam', 'Ramirez', '1983-03-13', 'Female', '7060889880', 'adam94@example.com', '313 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Frederik', 'Grey', '1942-10-13', 'Male', '1448668552', 'frederik95@example.com', '907 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Emily', 'Grey', '1952-07-10', 'Female', '4167994306', 'emily96@example.com', '864 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Emily', 'Johnson', '1964-01-07', 'Female', '5558014392', 'emily97@example.com', '272 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Allen', 'Vega', '1965-06-03', 'Other', '5623481401', 'allen98@example.com', '957 Random St');
INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) VALUES ('Frederik', 'Johnson', '1966-12-29', 'Other', '1465368198', 'frederik99@example.com', '628 Random St');


INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Grace', 'General Medicine', '1007457211', 'robert.grace0@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Anthony', 'Grace', 'General Medicine', '0263367812', 'anthony.grace1@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Blake', 'Pediatrics', '8876684349', 'lillian.blake2@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Smith', 'Oncology', '8246320175', 'robert.smith3@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Alex', 'Grace', 'Radiology', '3031943143', 'alex.grace4@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Ryan', 'Hart', 'Dermatology', '1678943632', 'ryan.hart5@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Alex', 'Harris', 'Dermatology', '3971549751', 'alex.harris6@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'Hart', 'Dermatology', '4346329094', 'jennifer.hart7@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Ryan', 'Harris', 'Pediatrics', '3613054906', 'ryan.harris8@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Ryan', 'Robbins', 'Psychiatry', '5934419328', 'ryan.robbins9@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Blake', 'General Medicine', '7027109084', 'lillian.blake10@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Whitlock', 'Neurology', '8164777298', 'robert.whitlock11@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Sally', 'Hart', 'Cardiology', '4225573525', 'sally.hart12@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Whitlock', 'Radiology', '3346586432', 'lillian.whitlock13@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'Walker', 'Oncology', '6093925953', 'jennifer.walker14@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'Hart', 'Psychiatry', '5978485516', 'jennifer.hart15@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Sally', 'Madden', 'Orthopedics', '0882294241', 'sally.madden16@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Anthony', 'Grace', 'Neurology', '0510114852', 'anthony.grace17@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Blake', 'Psychiatry', '1666097197', 'lillian.blake18@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Smith', 'Orthopedics', '3587152260', 'robert.smith19@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Ryan', 'Madden', 'Pediatrics', '2605475183', 'ryan.madden20@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Edward', 'Blake', 'Cardiology', '3347889839', 'edward.blake21@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Sally', 'Harris', 'Neurology', '0176904192', 'sally.harris22@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Whitlock', 'Surgery', '3039826177', 'lillian.whitlock23@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Harris', 'General Medicine', '1312170225', 'robert.harris24@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Hart', 'Neurology', '8569661469', 'robert.hart25@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Edward', 'Whitlock', 'Oncology', '6175973785', 'edward.whitlock26@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Christina', 'Hart', 'Cardiology', '8674279010', 'christina.hart27@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Alex', 'Grace', 'Surgery', '7236160219', 'alex.grace28@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Madden', 'Surgery', '3216301778', 'robert.madden29@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Edward', 'Harris', 'Oncology', '2952815549', 'edward.harris30@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'White', 'Surgery', '2938191056', 'jennifer.white31@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Brandon', 'Walker', 'Oncology', '3969201962', 'brandon.walker32@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Alex', 'Grace', 'Orthopedics', '8989719956', 'alex.grace33@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'Whitlock', 'Radiology', '1982242475', 'jennifer.whitlock34@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'Whitlock', 'Psychiatry', '4754207882', 'jennifer.whitlock35@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Ryan', 'Robbins', 'Dermatology', '9324532298', 'ryan.robbins36@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Christina', 'Madden', 'Dermatology', '5456225128', 'christina.madden37@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Robert', 'Madden', 'Orthopedics', '6452259969', 'robert.madden38@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Brandon', 'White', 'Neurology', '5237219767', 'brandon.white39@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Edward', 'Blake', 'Oncology', '3058756094', 'edward.blake40@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Alex', 'Blake', 'Orthopedics', '3044964725', 'alex.blake41@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Jennifer', 'Grace', 'Oncology', '1537017027', 'jennifer.grace42@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Sally', 'Robbins', 'Psychiatry', '1658640762', 'sally.robbins43@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Robbins', 'Surgery', '6550129439', 'lillian.robbins44@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Lillian', 'Walker', 'Psychiatry', '2198547021', 'lillian.walker45@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Alex', 'Smith', 'Oncology', '5656314422', 'alex.smith46@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Sally', 'Blake', 'Psychiatry', '3217076687', 'sally.blake47@hospital.com', True);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Edward', 'Madden', 'General Medicine', '5477494770', 'edward.madden48@hospital.com', False);
INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) VALUES ('Christina', 'Whitlock', 'Surgery', '5720049520', 'christina.whitlock49@hospital.com', False);



INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (43, 24, '2023-05-02', '16:25:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (50, 29, '2024-03-02', '13:47:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (62, 39, '2023-01-17', '17:48:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (3, 21, '2023-05-04', '16:33:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (97, 33, '2024-02-26', '14:08:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (18, 3, '2023-10-10', '10:12:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (36, 35, '2024-04-03', '16:42:00', 'Completed');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (5, 31, '2023-09-21', '15:00:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (28, 48, '2023-11-22', '15:58:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (87, 12, '2024-07-27', '9:12:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (5, 39, '2023-06-28', '10:38:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (23, 15, '2023-04-21', '9:41:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (50, 48, '2024-10-29', '14:48:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (46, 6, '2023-01-19', '17:44:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (23, 50, '2024-05-23', '13:18:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (43, 50, '2023-09-23', '15:38:00', 'Completed');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (17, 7, '2023-12-31', '13:39:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (22, 7, '2023-10-18', '11:42:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (41, 42, '2024-06-19', '8:14:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (57, 23, '2023-05-10', '15:23:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (27, 4, '2023-07-24', '16:28:00', 'Completed');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (73, 47, '2024-05-25', '14:45:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (39, 37, '2023-02-23', '17:21:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (41, 21, '2024-02-08', '12:05:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (47, 24, '2023-02-24', '17:21:00', 'Completed');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (32, 50, '2024-10-03', '16:18:00', 'Completed');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (40, 24, '2024-09-29', '16:55:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (86, 9, '2023-06-30', '10:39:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (4, 36, '2024-09-26', '10:29:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (5, 43, '2023-06-14', '14:00:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (19, 18, '2023-04-15', '8:57:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (56, 5, '2023-02-17', '14:45:00', 'Cancelled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (94, 30, '2024-09-09', '13:26:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (15, 25, '2024-03-12', '13:21:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (77, 27, '2024-02-14', '16:09:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (5, 30, '2024-09-01', '10:20:00', 'In Progress');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (38, 42, '2023-02-26', '14:42:00', 'Completed');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (38, 21, '2024-07-09', '17:51:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (88, 1, '2024-05-05', '8:55:00', 'Scheduled');
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) VALUES (50, 23, '2024-09-17', '12:09:00', 'In Progress');



INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (45, 30, 'Conditions of the spine and back', 'Topical Ointments', 'Amlodipine', '2023-11-08');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (15, 29, 'Asthma', 'Blood Transfusion', 'Metformin', '2024-07-11');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (74, 28, 'Acute Pharyngitis', 'Lifestyle Changes', 'Albuterol', '2023-11-18');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (92, 36, 'Osteoarthritis', 'Topical Ointments', 'Amlodipine', '2024-02-01');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (84, 27, 'Infection', 'Surgery', 'Paracetamol', '2023-11-03');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (54, 30, 'Diabetes', 'Vaccine', 'Pain relievers', '2024-01-07');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (8, 4, 'Acute Respiratory Infections', 'Physiotherapy', 'Metformin', '2023-01-10');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (72, 28, 'Conditions of the spine and back', 'Blood Transfusion', 'Albuterol', '2023-03-16');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (96, 46, 'Common Cold', 'Therapy', 'Pain relievers', '2023-09-02');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (57, 4, 'Diabetes', 'Vaccine', 'Paracetamol', '2023-09-20');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (24, 14, 'Acute Respiratory Infections', 'Antifungal medications', 'Paracetamol', '2023-01-17');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (34, 27, 'Acute Respiratory Infections', 'Physiotherapy', 'Paracetamol', '2024-01-01');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (32, 38, 'Acute Pharyngitis', 'Antifungal medications', 'Ibuprofen', '2024-08-02');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (15, 41, 'Anxiety', 'Vaccine', 'Ibuprofen', '2023-09-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (83, 28, 'Fracture', 'Antihistamines', 'Albuterol', '2024-12-26');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (29, 8, 'Cardiac dysrhythmias', 'Therapy', 'Metformin', '2023-05-23');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (46, 42, 'Conditions of the spine and back', 'Physiotherapy', 'Amlodipine', '2024-02-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (74, 19, 'Hypertension', 'Surgery', 'Ibuprofen', '2023-09-02');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (31, 9, 'Acute Respiratory Infections', 'Topical Ointments', 'Albuterol', '2024-03-19');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (6, 37, 'Acute Respiratory Infections', 'Antihistamines', 'Paracetamol', '2023-08-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (64, 16, 'Migraine', 'Topical Ointments', 'Albuterol', '2024-11-18');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (69, 32, 'Depressive Disorder', 'Antihistamines', 'Pain relievers', '2023-08-18');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (47, 17, 'Depressive Disorder', 'Therapy', 'Albuterol', '2024-04-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (7, 29, 'Glaucoma', 'Antibiotics', 'Paracetamol', '2023-06-07');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (63, 39, 'Cardiac dysrhythmias', 'Blood Transfusion', 'Hydrocodone/Acetaminophen', '2023-05-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (83, 25, 'Fracture', 'Vaccine', 'Hydrocodone/Acetaminophen', '2024-09-13');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (47, 38, 'Infection', 'Therapy', 'Paracetamol', '2024-11-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (79, 5, 'Allergic rhinitis', 'Antifungal medications', 'Ibuprofen', '2023-02-03');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (5, 48, 'Common Cold', 'Surgery', 'Levothyroxine', '2024-06-25');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (55, 33, 'Cardiac dysrhythmias', 'Antibiotics', 'Hydrocodone/Acetaminophen', '2024-05-31');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (38, 14, 'Acute Pharyngitis', 'Surgery', 'Paracetamol', '2023-07-28');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (26, 9, 'Joint Disorders', 'Antihistamines', 'Hydrocodone/Acetaminophen', '2023-09-16');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (79, 23, 'Migraine', 'Antihistamines', 'Hydrocodone/Acetaminophen', '2023-11-11');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (90, 4, 'Osteoarthritis', 'Lifestyle Changes', 'Metformin', '2023-12-17');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (85, 10, 'Hypertension', 'Antibiotics', 'Ibuprofen', '2024-04-12');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (48, 8, 'Acute Respiratory Infections', 'Antibiotics', 'Amlodipine', '2024-01-22');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (71, 9, 'Osteoarthritis', 'Antifungal medications', 'Levothyroxine', '2023-04-08');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (47, 14, 'Infection', 'Vaccine', 'Levothyroxine', '2023-02-28');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (76, 41, 'Glaucoma', 'Lifestyle Changes', 'Levothyroxine', '2023-08-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (85, 37, 'Diabetes', 'Surgery', 'Amlodipine', '2024-06-17');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (52, 43, 'Acute Respiratory Infections', 'Blood Transfusion', 'Amlodipine', '2023-03-10');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (38, 16, 'Diabetes', 'Blood Transfusion', 'Albuterol', '2024-02-25');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (77, 34, 'Conditions of the spine and back', 'Surgery', 'Ibuprofen', '2023-09-29');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (45, 28, 'Osteoarthritis', 'Surgery', 'Metformin', '2023-04-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (100, 4, 'Acute Pharyngitis', 'Physiotherapy', 'Ibuprofen', '2023-05-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (51, 40, 'Joint Disorders', 'Vaccine', 'Metformin', '2023-12-10');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (68, 8, 'Acute Respiratory Infections', 'Antibiotics', 'Amlodipine', '2024-10-20');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (64, 21, 'Joint Disorders', 'Therapy', 'Pain relievers', '2024-04-26');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (12, 50, 'Glaucoma', 'Therapy', 'Hydrocodone/Acetaminophen', '2023-03-19');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (41, 39, 'Common Cold', 'Topical Ointments', 'Albuterol', '2024-08-07');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (1, 13, 'Hypertension', 'Antibiotics', 'Levothyroxine', '2023-10-16');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (80, 7, 'Hypertension', 'Physiotherapy', 'Albuterol', '2024-10-02');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (11, 40, 'Fracture', 'Antibiotics', 'Ibuprofen', '2023-11-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (60, 2, 'Joint Disorders', 'Vaccine', 'Ibuprofen', '2023-04-23');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (42, 35, 'Hypertension', 'Surgery', 'Albuterol', '2024-08-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (89, 10, 'Asthma', 'Antifungal medications', 'Levothyroxine', '2023-12-20');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (92, 47, 'Anxiety', 'Antibiotics', 'Pain relievers', '2024-07-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (49, 35, 'Common Cold', 'Blood Transfusion', 'Amlodipine', '2024-11-01');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (6, 50, 'Osteoarthritis', 'Topical Ointments', 'Metformin', '2023-02-28');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (69, 15, 'Conditions of the spine and back', 'Lifestyle Changes', 'Levothyroxine', '2024-07-15');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (61, 7, 'Migraine', 'Antifungal medications', 'Paracetamol', '2023-08-16');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (66, 11, 'Joint Disorders', 'Topical Ointments', 'Amlodipine', '2023-07-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (25, 38, 'Glaucoma', 'Blood Transfusion', 'Pain relievers', '2024-04-15');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (51, 30, 'Glaucoma', 'Surgery', 'Albuterol', '2024-08-03');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (66, 38, 'Depressive Disorder', 'Surgery', 'Levothyroxine', '2024-04-23');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (1, 49, 'Hypertension', 'Blood Transfusion', 'Hydrocodone/Acetaminophen', '2024-08-09');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (23, 46, 'Anxiety', 'Physiotherapy', 'Paracetamol', '2023-11-13');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (38, 11, 'Diabetes', 'Therapy', 'Hydrocodone/Acetaminophen', '2024-08-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (61, 18, 'Cardiac dysrhythmias', 'Therapy', 'Paracetamol', '2023-10-01');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (29, 48, 'Conditions of the spine and back', 'Antihistamines', 'Levothyroxine', '2024-07-29');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (99, 46, 'Cardiac dysrhythmias', 'Lifestyle Changes', 'Amlodipine', '2024-08-06');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (69, 31, 'Migraine', 'Physiotherapy', 'Metformin', '2024-02-19');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (18, 39, 'Acute Pharyngitis', 'Antibiotics', 'Amlodipine', '2024-03-07');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (95, 19, 'Acute Respiratory Infections', 'Lifestyle Changes', 'Ibuprofen', '2024-07-10');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (69, 20, 'Acute Respiratory Infections', 'Topical Ointments', 'Metformin', '2024-03-11');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (67, 6, 'Acute Pharyngitis', 'Topical Ointments', 'Amlodipine', '2023-06-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (17, 12, 'Hypertension', 'Antibiotics', 'Hydrocodone/Acetaminophen', '2023-05-07');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (31, 50, 'Migraine', 'Physiotherapy', 'Hydrocodone/Acetaminophen', '2023-06-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (29, 6, 'Joint Disorders', 'Antihistamines', 'Hydrocodone/Acetaminophen', '2023-09-02');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (60, 29, 'Common Cold', 'Antifungal medications', 'Hydrocodone/Acetaminophen', '2024-05-16');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (39, 16, 'Joint Disorders', 'Antifungal medications', 'Metformin', '2024-05-21');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (19, 41, 'Cardiac dysrhythmias', 'Physiotherapy', 'Levothyroxine', '2024-11-30');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (29, 2, 'Glaucoma', 'Vaccine', 'Albuterol', '2024-01-29');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (48, 15, 'Asthma', 'Therapy', 'Levothyroxine', '2023-11-23');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (76, 27, 'Diabetes', 'Blood Transfusion', 'Pain relievers', '2024-08-01');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (40, 46, 'Asthma', 'Blood Transfusion', 'Amlodipine', '2023-08-25');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (75, 8, 'Asthma', 'Antifungal medications', 'Albuterol', '2024-05-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (47, 34, 'Osteoarthritis', 'Physiotherapy', 'Albuterol', '2023-04-03');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (91, 36, 'Anxiety', 'Therapy', 'Pain relievers', '2023-02-12');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (13, 5, 'Common Cold', 'Lifestyle Changes', 'Paracetamol', '2024-01-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (45, 6, 'Diabetes', 'Vaccine', 'Albuterol', '2023-06-13');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (41, 35, 'Acute Respiratory Infections', 'Topical Ointments', 'Ibuprofen', '2023-03-08');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (10, 2, 'Acute Pharyngitis', 'Topical Ointments', 'Paracetamol', '2024-11-19');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (45, 29, 'Common Cold', 'Antihistamines', 'Metformin', '2024-07-27');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (13, 9, 'Infection', 'Antibiotics', 'Albuterol', '2023-03-31');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (52, 43, 'Osteoarthritis', 'Antihistamines', 'Paracetamol', '2023-05-16');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (32, 14, 'Diabetes', 'Antibiotics', 'Metformin', '2023-09-30');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (99, 3, 'Glaucoma', 'Blood Transfusion', 'Levothyroxine', '2024-01-20');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (63, 33, 'Conditions of the spine and back', 'Antifungal medications', 'Hydrocodone/Acetaminophen', '2023-12-24');
INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) VALUES (79, 44, 'Infection', 'Surgery', 'Hydrocodone/Acetaminophen', '2024-12-12');


