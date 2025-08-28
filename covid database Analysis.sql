create database coviddatabase;
use coviddatabase;
create table patients
(
 patient_id int primary key,
  first_name varchar(100),
  last_name varchar(100),
  age int ,
  gender varchar(50),
  address varchar(100),
  phone_no varchar(100),
  email varchar(100),
  date_of_diagnosis date,
  status_patient varchar(100)
);
Insert into patients values(101,'Suresh','Kumar',78,'Male','G-12 lane Kanpur', 9140470520,'skumar@gmail.com','2020-03-12','Recovered');   
Insert into patients values(112,'Akhil','Pandey',25,'Male','Civil lines Kanpur', 9839645720,'ap1993@gmail.com','2022-04-21','Recovered');
Insert into patients values(293,'Prateeksha','Bisht',23,'Female','Kashipur Uttarakhand', 8958254552,'pbisht@gmail.com','2024-01-21','Hospitalized');   
Insert into patients values(105,'Shivam','Mishra',25,'Male','Ajara Lalganj Pratapgarh', 9136465676,'lordshiv0803@gmail.com','2022-08-05','Recovered');   
Insert into patients values(213,'Sumit','Pandey',25,'Male','Lalganj Pratapgarh', 9199920607,'playsumitboy@gmail.com','2021-04-25','Hospitalized');   
Insert into patients values(150,'Vaibhav','Rai',24,'Male','Paschim Vihar Delhi', 9129934565,'lazyvrai2510@gmail.com','2023-07-29','Recovered');   
Insert into patients values(118,'Saumya','Gupta',45,'Female','b-12 south city Kolkata', 7054221346,'swiftie45@gmail.com','2022-01-31','Deceased');   
Insert into patients values(251,'Mayank','Bhardwaj',78,'Male','Choti gali Bihar', 7986234576,'studmayank@gmail.com','2024-09-26','Deceased');   
Insert into patients values(135,'Naina','Talwar',35,'Female','lake bakery Udaipur', 8097365412,'nerdnaina@gmail.com','2022-10-27','Hospitalized');   
Insert into patients values(191,'Sehmat','Khan',53,'Female','Anantnaag Kashmir', 9999024356,'courageousehmat@gmail.com','2023-12-12','Deceased');   
Insert into patients values(167,'Ananya','Kapoor',18,'Female','Nakhasha Kannauj', 8004500007,'Akknown@gmail.com','2022-11-11','Recovered');   
Insert into patients values(183,'Tulika','Tandon',40,'Female','Vrindavan enclave Greater Noida', 8234567891,'TTcool@gmail.com','2023-10-09','Hospitalized'); 
Insert into patients values(283,'Manish','Singh',56,'Male','Lane H-127 Banglore', 7983494576,'manishks@gmail.com','2022-09-13','Deceased');   
Insert into patients values(302,'Megha','Rawat',23,'Female','lake bakery Udaipur', 9186134176,'Meghuuu02@gmail.com','2021-03-25','Recovered');   
Insert into patients values(441,'Jagpreet','Kaul',45,'Male','Vrindavan enclave Greater Noida', 8986454576,'Ordinaryjugs01@gmail.com','2023-01-29','Deceased');   
Insert into patients values(278,'Aryan','Pandita',24,'Male','Choti gali Bihar', 9186234516,'aryansigma00@gmail.com','2021-10-11','Hospitalized');        

alter table patients
modify column age float;

Select * from patients
where patient_id=278;

select * from patients 
where address='lake bakery Udaipur';

select * from patients 
where first_name like "%a";

select * from patients
where age<40;

select * from patients;
   create table Medical_facilities
   (
    facility_id int primary key,
    facility_name varchar(100),
    facility_location varchar(100),
	facility_capacity int,
    curr_occupancy int
    );
      Insert into Medical_facilities values(901,'Vedanta Hospital','Gomti nagar',300,225); 
      Insert into Medical_facilities values(902,'Max Hospital','Rohini Delhi',1000,970); 
      Insert into Medical_facilities values(903,'Aiims Hospital','Kolkata',2500,2300); 
      Insert into Medical_facilities values(904,'SGPGI Hospital','Lucknow',7000,6700); 
      Insert into Medical_facilities values(905,'City Hospital','Chennai',4000,200);
      Insert into Medical_facilities values(906,'KDMPG Hospital','Mumbai',15000,12345); 
      Insert into Medical_facilities values(907,'AFMC Hospital','Ahemdabad',3000,2667); 
      select * from medical_facilities limit 5;
      Select facility_location ,facility_capacity from medical_facilities
      where curr_occupancy>4000;
      select max(facility_capacity) from medical_facilities;
       
       alter table medical_facilities
       modify column curr_occupancy float;
       alter table medical_facilities
       modify column facility_capacity float;
       
      
      select * from Medical_facilities;
      
     select facility_location, facility_capacity- curr_occupancy  as  'Available bed'  from Medical_facilities;
      

    create table Medical_Staff
    (
     staff_id int primary key,
     first_name varchar(100),
     last_name varchar(100),
     role varchar(100)
     );

Insert into Medical_staff values(201,'Piyush','Daiyya', 'Doctor',901);
Insert into Medical_staff values(211,'Divya','Bhakt', 'Administrator',904);
Insert into Medical_staff values(221,'Utkarsh','Agarwal', 'Nurse',903);
Insert into Medical_staff values(231,'Shiwangi','Shukla', 'Doctor',905);
Insert into Medical_staff values(241,'Sumana','Biswas', 'Nurse',907);
Insert into Medical_staff values(251,'Nisha','Mehra', 'Administrator',901);
Insert into Medical_staff values(261,'Nishank','Mehrotra', 'Nurse',903);
Insert into Medical_staff values(271,'Udisha','Dwivedi', 'Doctor',906);
Insert into Medical_staff values(281,'Chirag','Gupta', 'Nurse',906);
alter table 

SELECT * FROM Medical_staff WHERE  not 'Doctor';

SELECT role, COUNT(*) FROM Medical_staff GROUP BY role;


select * from Medical_staff limit 4;

select * from Medical_staff;
  alter table Medical_staff
  add column facility_id int  ;
  alter table Medical_staff
  drop column facility_id;
 alter table Medical_Staff ;
add column facility_id int FOREIGN KEY REFERENCES Medical_facilities(facility_id);
   
   ALTER TABLE Medical_staff
ADD FOREIGN KEY (facility_id) REFERENCES Medical_facilities(facility_id);

Select Count(role) from Medical_staff
where role= 'Doctor';


     create table test 
     (
      test_id int primary key,
      test_date date,
      test_result varchar(20)
      );
      alter table test
      add column patient_id int;
      
       
	select * from test;
      ALTER TABLE test
ADD FOREIGN KEY (patient_id) REFERENCES patients(patient_id);

      Insert into test Values(401,'2020-03-09','Positive',101);
      Insert into test Values(405,'2022-04-19','Negative',112);
      Insert into test Values(410, '2024-01-20','Negative',293);
      Insert into test Values(411, '2022-11-10','Positive',167);
      Insert into test Values(413, '2022-08-01','Negative',105);
      Insert into test Values(415, '2023-10-07','Positive',183);
      Insert into test Values(420, '2022-01-26','Positive',118);
      Insert into test Values(425, '2021-04-23','Negative',213);
      Insert into test Values(427, '2022-10-25','Positive',135);
      Insert into test Values(435, '2023-07-29','Negative',150);
      Insert into test Values(445, '2023-12-10','Positive',191);
      Insert into test Values(496, '2024-09-25','Negative',251);
       select test_result,patient_id from test order by patient_id desc;     //order by query. 
      select * from test;
      drop table test;
      SELECT * FROM test WHERE test_date BETWEEN '2023-01-01' AND '2024-04-01';
      SELECT count(*) FROM test where test_result='negative';


      create table Vaccination_records
      (
       vaccination_id int primary key,
	   vaccination_type varchar(100),
       vaccination_date date
       );
select * from vaccination_records where vaccination_type is null; 
alter table vaccination_records rename as Vacc_Rec;    
SELECT count(*) FROM test where test_result='positive';
       alter table Vaccination_records
       add column Patient_id int; 
         ALTER TABLE Vaccination_records
ADD FOREIGN KEY (patient_id) REFERENCES patients(patient_id);

     Insert into Vaccination_records Values(501, 'Type-1','2020-07-03',101); 
     Insert into Vaccination_records Values(502, 'Type-2','2022-02-22',112);  
     Insert into Vaccination_records Values(503, 'Type-1','2024-04-09',293);  
     Insert into Vaccination_records Values(504, 'Type-1','2022-12-08',105);  
     Insert into Vaccination_records Values(505, 'Type-2','2021-07-09',213);  
     Insert into Vaccination_records Values(506, 'Type-1','2023-12-03',150);  
     
     select * from vaccination_records where patient_id=105; 
     select * from patients 
                    where first_name like "a%";

     
      create table contact_tracing 
      (
       tracing_id int primary key,
       infected_patient_id int,
       contacted_patient_id int,
       contact_date date,
       contact_status varchar(50)
       );
	    drop table contact_tracing;
       ALTER TABLE contact_tracing
	   add FOREIGN KEY (infected_patient_id) REFERENCES patients(patient_id);
        ALTER TABLE contact_tracing
	   add FOREIGN KEY (contacted_patient_id) REFERENCES patients(patient_id);
        
       Insert into contact_tracing Values(601,112,213,'2021-04-21','Quarantined');
	   Insert into contact_tracing Values(602,293,183,'2024-01-19','Tested');
	   Insert into contact_tracing Values(603,150,135,'2023-07-18','Tested');
	   Insert into contact_tracing Values(604,105,251,'2022-07-29','Asymptomatic');
	   Insert into contact_tracing Values(605,183,191,'2023-10-01','Asymptomatic');
	   Insert into contact_tracing Values(606,283,441,'2022-09-02','Quarantined');
	   Insert into contact_tracing Values(607,278,441,'2021-10-07','Asymptomatic');
	   Insert into contact_tracing Values(608,302,167,'2021-02-27','Tested');      
       SELECT contact_status, COUNT(*) FROM contact_tracing GROUP BY contact_status;
       UPDATE contact_tracing SET contact_status='tested' WHERE tracing_id=607;
	
       select * from contact_tracing where contact_status not in('asymptomatic','tested');
       select * from patients;
       
       //complex queries
       
SELECT gender, COUNT(*) AS total_patients
FROM Patients
GROUP BY gender;

SELECT AVG(age) AS avg_age_hospitalized
FROM Patients
WHERE status_patient = 'hospitalized';

SELECT facility_name, (curr_occupancy * 100) / facility_capacity AS occupancy_percentage
FROM Medical_Facilities
WHERE (curr_occupancy * 100) / facility_capacity > 80;

SELECT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
WHERE t.test_result = 'positive'
AND NOT EXISTS (
    SELECT 1 FROM Contact_Tracing ct
    WHERE ct.infected_patient_id = p.patient_id
    AND ct.contact_status = 'symptomatic'
);

SELECT ct.tracing_id, p1.first_name AS infected_patient_first_name, p1.last_name AS infected_patient_last_name,
       p2.first_name AS contacted_patient_first_name, p2.last_name AS contacted_patient_last_name,
       ct.contact_date, ct.contact_status
FROM Contact_Tracing ct
JOIN Patients p1 ON ct.infected_patient_id = p1.patient_id
JOIN Patients p2 ON ct.contacted_patient_id = p2.patient_id;

SELECT mf.facility_name, ms.role, COUNT(*) AS staff_count
FROM Medical_Staff ms
JOIN Medical_Facilities mf ON ms.facility_id = mf.facility_id
GROUP BY mf.facility_name, ms.role;

SELECT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
JOIN Vacc_Rec vr ON p.patient_id = vr.patient_id
WHERE t.test_result = 'positive';

SELECT facility_name, facility_capacity
FROM Medical_Facilities
WHERE facility_capacity < (SELECT AVG(facility_capacity) FROM Medical_Facilities);

SELECT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
WHERE t.test_result = 'positive'
AND p.patient_id NOT IN (SELECT patient_id FROM Vacc_Rec);

SELECT p.patient_id, p.first_name, p.last_name, ct.contact_date, ct.contact_status
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
JOIN Contact_Tracing ct ON p.patient_id = ct.infected_patient_id
WHERE t.test_result = 'positive';

SELECT AVG(age) AS avg_age_positive_cases
FROM Patients
WHERE patient_id IN
 (SELECT patient_id FROM Test WHERE test_result = 'positive');

SELECT patient_id, COUNT(*) AS positive_tests_count
FROM Test
WHERE test_result = 'positive'
GROUP BY patient_id
HAVING COUNT(*) > 1;

SELECT CASE 
           WHEN age <= 18 THEN '0-18'
           WHEN age <= 30 THEN '19-30'
           WHEN age <= 50 THEN '31-50'
           ELSE '51+'
       END AS age_group,
       COUNT(*) AS severe_cases_count
FROM Patients
WHERE status_patient = 'hospitalized'
GROUP BY age_group;


SELECT p.patient_id, p.first_name, p.last_name, t.test_date
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
WHERE t.test_result = 'positive'
AND t.test_date > '2023-05-06';


SELECT DISTINCT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Contact_Tracing ct ON p.patient_id = ct.contacted_patient_id
WHERE ct.contact_status = 'quarantined';

SELECT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
WHERE t.test_result = 'positive'
AND p.status_patient = 'asymptomatic';

SELECT facility_name, curr_occupancy
FROM Medical_Facilities
WHERE curr_occupancy = (SELECT MAX(curr_occupancy) FROM Medical_Facilities);

SELECT DISTINCT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Contact_Tracing ct ON p.patient_id = ct.contacted_patient_id
WHERE ct.contact_status = 'asymptomatic';


SELECT facility_name, facility_location
FROM Medical_Facilities
WHERE curr_occupancy = 0;

SELECT AVG(DATEDIFF(v.vaccination_date, p.date_of_diagnosis)) AS avg_time_to_vaccination
FROM Patients p
JOIN Vacc_Rec v ON p.patient_id = v.patient_id;

SELECT mf.facility_name, ms.role, COUNT(*) AS staff_count
FROM Medical_Staff ms
JOIN Medical_Facilities mf ON ms.facility_id = mf.facility_id
GROUP BY mf.facility_name, ms.role;

SELECT gender, AVG(age) AS avg_age_positive
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
WHERE t.test_result = 'positive'
GROUP BY gender;


SELECT p.patient_id, p.first_name, p.last_name
FROM Patients p
JOIN Test t ON p.patient_id = t.patient_id
JOIN Vacc_Rec vr ON p.patient_id = vr.patient_id
WHERE t.test_result = 'positive'
AND vr.vaccination_type = 'Type-1';

SELECT mf.facility_id, mf.facility_name, mf.facility_location, mf.facility_capacity, mf.curr_occupancy,
       ms.staff_id, ms.first_name AS staff_first_name, ms.last_name AS staff_last_name, ms.role
FROM Medical_Facilities mf
INNER JOIN Medical_Staff ms ON mf.facility_id = ms.facility_id;


SELECT mf.facility_name
FROM Medical_Facilities mf
WHERE NOT EXISTS (
    SELECT ms.staff_id
    FROM Medical_Staff ms
    WHERE ms.facility_id = mf.facility_id
    AND ms.staff_id NOT IN (SELECT patient_id FROM Vacc_Rec)
    );
    

create view Patient_contact as
select Patient_id, phone_no,email
from patients
where status_patient = 'recovered';

select * from Patient_contact;

create trigger Safety 
 patients 
for insert, update, delete
as
print 'you cannot create,alter and drop table.'; 

desc medical_facilities;
desc patients;
desc medical_staff;
desc test;
desc vacc_rec;
desc contact_tracing;