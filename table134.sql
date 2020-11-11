-- Table 1
CREATE TABLE IF NOT EXISTS T5_INCIDENT
(
Incident_Id VARCHAR(20) NOT NULL ,
Incident_Type VARCHAR(30) NULL ,
Incident_Date DATE NOT NULL ,
Description VARCHAR(100) NULL ,
CONSTRAINT XPKINCIDENT_17 PRIMARY KEY (Incident_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_17 ON T5_INCIDENT (Incident_Id ASC);

INSERT INTO T5_INCIDENT VALUES('50101','Fire','2011-10-03','Sparks from tear in the electric wiring systems are not covered in insurance');
INSERT INTO T5_INCIDENT VALUES('50102','Theft','2003-10-07','Insurers will pay an amount equal to declared value of insured bike in case of theft. A report by one of the leading English dailies paint an agonizing picture for two-wheeler owners in India');
INSERT INTO T5_INCIDENT VALUES('50103','Collision Coverage','2004-08-23','100% of the sum insured is offered on the accidental death of the insured person Reimbursement will be offered for the medical expenses incurred due to an accident. The insurance policy also pays for an education fund for two children in case of death of the insured');
INSERT INTO T5_INCIDENT VALUES('50104','lightning','2006-08-15','Under The policy of Standard Fire and Special Perils Policy Coverage you can claim the Damage coverages');
INSERT INTO T5_INCIDENT VALUES('50105','self ignition','2006-11-14',Third-party car insurance cover will pay for any fiscal liability and will also from claims arising from a third party when the insured's vehicle is at fault fire, explosion, self-ignition");
INSERT INTO T5_INCIDENT VALUES('50106','external explosion','2008-05-23',Most home and contents insurance covers you for damage caused by fire, including bushfire. Generally, a flame has to cause the damage");
INSERT INTO T5_INCIDENT VALUES('50107','burglar',2009-10-15', 'Insurers will pay an amount equal to declared value of insured bike in case of theft. A report by one of the leading English dailies paint an agonizing picture for two-wheeler owners in India");
INSERT INTO T5_INCIDENT VALUES('50108','nuclear perils',2012-03-02', 'insurance contract that safeguards the insured against unforeseen contingency caused by accidental fire, lightning, explosion/implosion, destruction or damage caused by aerial devices, man made perils");
INSERT INTO T5_INCIDENT VALUES('50109','mechanical breakdown','2014-01-07','Equipment breakdown coverage. Equipment breakdown coverage is a form of commercial insurance that provides funds to repair or replace damaged machinery or equipment that has suffered a mechanical or electrical failure");
INSERT INTO T5_INCIDENT VALUES('50110','drunken driving','2014-01-20','Driving under the influence of alcohol or drugs is illegal obviously However if you drive drunk and cause a car accident your car insurance policy will pay for damages you cause  up to the liability limits of your policy');
INSERT INTO T5_INCIDENT VALUES('50111','natural calamity','2014-11-21','A comprehensive car insurance policy provides coverage against damages or losses caused due to almost all natural disasters');
INSERT INTO T5_INCIDENT VALUES('50112','auto liability coverage','2015-04-09','Liability insurance is a part of the general insurance system of risk financing to protect the purchaser from the risks of liabilities imposed by lawsuits and similar claims and protects the insured if the purchaser is sued for claims that come within the coverage of the insurance policy');
INSERT INTO T5_INCIDENT VALUES('50113','Floods Damage','2015-11-17', 'Add on cover called Engine Protection to cover the losses to engine due to flood water. The Add on is designed to cover damages caused to the car\’s engine');
INSERT INTO T5_INCIDENT VALUES('50114','Comprehensive Insurance','2016-04-04','provides the minimal required coverage of losses related to a third-party. In addition, comprehensive insurance offers protection from losses or damage to the insured vehicle and injuries to the owner,due to accidents');
INSERT INTO T5_INCIDENT VALUES('50115','Aggravated damage','2017-07-28','Aggravated damages are the special and highly exceptional damages awarded on a defendant by a court, when his/her conduct amounts to tortious conduct subjecting the plaintiff to humiliating and malicious circumstances');
INSERT INTO T5_INCIDENT VALUES('50116','windshield damage','2018-06-15','The windshield of your car may break or have a crack as a result of a collision or non-collision. A comprehensive car insurance policy covers all physical damages caused to your car\'s windshield due to collision and non-collision');
INSERT INTO T5_INCIDENT VALUES('50117','Personal Injury','2019-01-01','Personal injury protection will cover all the costs associated with the accident');
INSERT INTO T5_INCIDENT VALUES('50118','Weather damage','2019-07-09,'The comprehensive policy will cover various aspects which are outside the purview of the collision of the vehicle');
INSERT INTO T5_INCIDENT VALUES('50119', 'vehicle stops in the middle of the road','2019-08-19,If your vehicle stops in the middle of the roadthe insurance company will come to your rescue');
INSERT INTO T5_INCIDENT VALUES('50120','damage of the engine','2019-10-21','The damage of the engine due to various reasons will be replaced when you subscribe to the engine replacement coverage');

-- Table 3
CREATE TABLE IF NOT EXISTS T5_INCIDENT_REPORT
(
Incident_Report_Id VARCHAR(20) NOT NULL ,
Incident_Type CHAR(10) NULL , 
Incident_Inspector VARCHAR(20) NULL , 
Incident_Cost INTEGER NULL ,
Incident_Report_Description VARCHAR(100) NULL ,
Incident_Id VARCHAR(20) NOT NULL , 
Cust_Id VARCHAR(20) NOT NULL , 
CONSTRAINT XPKINCIDENT_REPORT_18 PRIMARY KEY
(Incident_Report_Id,Incident_Id,Cust_Id), 
CONSTRAINT R_83 FOREIGN KEY (Incident_Id) REFERENCES T5_INCIDENT (Incident_Id), 
CONSTRAINT R_86 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER (Cust_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_REPORT_18 ON T5_INCIDENT_REPORT (Incident_Report_Id ASC,Incident_Id ASC,Cust_Id ASC);

INSERT INTO T5_INCIDENT_REPORT('50301','Fire','Tamal Devgan',25000,'due to shortcircuit in wires fire caused almost 50% damage','50101','50201');
INSERT INTO T5_INCIDENT_REPORT('50302','Theft',' Chand Raju',400000,'some one stole the vehicle','50102','50202');
INSERT INTO T5_INCIDENT_REPORT('50303','Collision Coverage','Wahid Bhai Mathur',18000,'due to collision car front part hasbeen damaged','50103','50203');
INSERT INTO T5_INCIDENT_REPORT('50304','lightning','Srinivasan Mann',35000,'due to heavy rain lightning caused damage to vehicle','50104','50204');
INSERT INTO T5_INCIDENT_REPORT('50305','self ignition','Albert Nayar',21000,'car starts automatically and causing severe fuel drain and power and reducing efficienty more likely mechanical error','50105','50205');
INSERT INTO T5_INCIDENT_REPORT('50306','external explosion','Marlo Singh Lodi',80000,'due to some cylinder explosion vechile was severly damaged ','50106','50206');
INSERT INTO T5_INCIDENT_REPORT('50307','burglar','Pratap Dara',100000,'some parts of the car are robbed','50107','50207');
INSERT INTO T5_INCIDENT_REPORT('50308','nuclear perils','Ajeet Nanda',500000,'due to nuclear explosion vechile has been damaged','50108','50208');
INSERT INTO T5_INCIDENT_REPORT('50309','mechanical breakdown','Parveen Abbas',55000,'due to some mechanical breakdown vechile is not working','50109','50209');
INSERT INTO T5_INCIDENT_REPORT('50310','drunken driving','Aditya Taahid',89000,'drunken driver has hit and caused a severe damage to vechile','50110','50210');
INSERT INTO T5_INCIDENT_REPORT('50311','natural calamity','Jaswant Ram',2500000,'due to natural calamity vechile has been damaged','50111','50211');
INSERT INTO T5_INCIDENT_REPORT('50312','auto liability coverage','Narayan Raja',250000,'vechile has hit other vechile(BMW) and caused damage and  the amount was 2500000(25lac)','50112','50212');
INSERT INTO T5_INCIDENT_REPORT('50313','Floods Damage','Jaswant Rama',1500000,'due to floods in hyderabad  vechile engine  hasbeen damaged','50113','50213');
INSERT INTO T5_INCIDENT_REPORT('50314','Comprehensive Insurance','Koushtubh Manne',250000,'comprehensive car insurance is an extensive motor insurance plan that covers the insured person against both, own damages and any third party liabilities','50114','50214');
INSERT INTO T5_INCIDENT_REPORT('50315','Aggravated damage','Tarun Bhai Sundaram',17000,'Aggravated damages are the special and highly exceptional damages awarded on a defendant by a court, when his/her conduct amounts to tortious conduct subjecting the plaintiff to humiliating and malicious circumstances','50115','50215');
INSERT INTO T5_INCIDENT_REPORT('50316','windshield damage','Kalyan Raj Mehrotra',16000,'due to accident wind shield hasbeen broken','50116','50216');
INSERT INTO T5_INCIDENT_REPORT('50317','Personal Injury','Ishat Kade',650000,'in accident person was injured severely','50117','50217');
INSERT INTO T5_INCIDENT_REPORT('50318','Weather damage','Kamlesh Bhai','Abdul Dev Bandi',150000,'due to heavy winds windshield was broken ','50118','50218');
INSERT INTO T5_INCIDENT_REPORT('50319','vehicle stops in the middle of the road','Varun Mathur',13000,'due to mechanical defects vechile has stoped in the middle of the road','50119','50219');
INSERT INTO T5_INCIDENT_REPORT('50320','damage of the engine','Varun Mathur',55000,'engine was damaged because of accident','50120','50220');

-- Table 4
CREATE TABLE IF NOT EXISTS T5_INSURANCE_COMPANY
(
Company_Name VARCHAR(20) NOT NULL ,
Company_Address VARCHAR(20) NULL ,
Company_Contact_Number INTEGER NULL ,
Company_Fax INTEGER NULL ,
Company_Email VARCHAR(20) NULL ,
Company_Website VARCHAR(20) NULL ,
Company_Location VARCHAR(20) NULL,
Company_Department_Name VARCHAR(20) NULL ,
Company_Office_Name VARCHAR(20) NULL ,
CONSTRAINT XPKINSURANCE_COMPANY_15 PRIMARY KEY
(Company_Name)
);
CREATE UNIQUE INDEX XPKINSURANCE_COMPANY_15 ON T5_INSURANCE_COMPANY
(Company_Name ASC);

INSERT INTO T5_INSURANCE_COMPANY(' Bajaj Allianz Life Insurance Company Limited','Hno 6-130, 1st Floor Above ING Vysya Bank Market Road Adilabad Mancherial Andhra Pradesh Telangana',18002097272,02066026789,'customercare@bajajallianz.co.in','https://www.bajajallianzlife.com','pune',' Bajaj Allianz Life Insurance Co',' Bajaj Allianz Life Insurance Co');
INSERT INTO T5_INSURANCE_COMPANY('Birla Sun Life Insurance Company Limited','One World Center, Tower 1, 16th Floor, Jupiter Mill Compound, 841, Senapati Bapat Marg, Elphinstone Road, Mumbai',18002707000,18002707000,'care.lifeinsurance@adityabirlacapital.com','https://lifeinsurance.adityabirlacapital.com','Mumbai ','Birla Sun Life Insurance ','Birla Sun Life Insurance ');
INSERT INTO T5_INSURANCE_COMPANY('HDFC Life Insurance Company Limited','Lodha Excelus, 13th Floor, Apollo Mills Compound, N.M. Joshi Marg, Mahalaxmi, Mumbai',18002649777,'buyonline@hdfclife.in','https://www.hdfclife.com/','Mumbai','hdfclife','hdfclife');
INSERT INTO T5_INSURANCE_COMPANY('ICICI Prudential Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai ',18602667766,02545465451,'iciciprulife@gmail.com','https://www.iciciprulife.com/','Mumbai',' ICICI PruLife',' ICICI PruLife');
INSERT INTO T5_INSURANCE_COMPANY('Exide Life Insurance Company Limited','Registered Office: 3rd Floor, JP Techno Park, No. 3/1, Millers Road, Bangalore- 560 001, India.',180014141414,02215454515,'ExideLifeInsurance@gmail.com','https://www.exidelife.in/','Mumbai','exidlifeoffice','exidelife');
INSERT INTO T5_INSURANCE_COMPANY('Life Insurance Corporation of India','2nd Floor Jagtial 505327',18005522552,021155779,'lic@gmail.com','www.lic.com','jagtial','licjagtial','licjag');
INSERT INTO T5_INSURANCE_COMPANY(' Max Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY(' PNB MetLife India Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Kotak Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('SBI Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Tata AIA Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Reliance Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Aviva Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Shriram Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Bharti AXA Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY(' Future Generali India Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('IDBI Federal Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY(' Canara HSBC Oriental Bank of Commerce LIC Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('Aegon Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
INSERT INTO T5_INSURANCE_COMPANY('DLF Pramerica Life Insurance Company Limited','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai','1089 Appasaheb Marathe Marg, Prabhadevi, Mumbai',180020010020,556622020,'maxlife@help.com','maxlife.com','maxlifeoffice','maxlifeoffice');
























