DATA Modified;
set removemissing;
run;

data temp1; 
set modified(RENAME=(BMI = tempCol));
BMI = input(tempCol, best12.);
drop tempCol; 
run;

data temp2; 
set temp1(rename=(totChol=tempCol));
totChol= input(tempCol,best12.);
drop tempCol;  
run;

data temp3; 
set temp2(rename=(cigsPerDay=tempCol));
cigsPerDay = input(tempCol,best12.);
drop tempCol;  
run;

data temp4; 
set temp3(rename=(glucose=tempCol));
glucose = input(tempCol,best12.);
drop tempCol;
run;

DATA MODIFIEDFINAL;
SET TEMP4(RENAME=(EDUCATION=tempCol));
EDUCATION = INPUT(tempCol, BEST12.);
DROP tempCol;
RUN;

DATA MYDATA;
retain male 	age 	education 	currentSmoker 	cigsPerDay 	BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol 	sysBP 	diaBP 	BMI 	heartRate 	glucose 	TenYearCHD 	_dataobs_;
SET MODIFIEDFINAL(RENAME=(BPMEDS=tempCol));
BPMEDS = INPUT(tempCol, best12.);
drop tempcol;
run;

data work.cleandata;
set mydata;
LABEL male = "Gender"
	  age = " Age of a Patient"
	  education = "Education level"
	  currentSmoker = "Current smoking?"
	  cighsPerDay = "No of Cigarates smoked/Day"
	  BPMeds = "was on Blood Pressure Med"
	  prevalentStroke = "previously had as Stoke"
	  prevalentHyp = " was hypertensive"
	  diabetes = " had diabetes"
	  totChol = "Toatl Cholesterol Level"
	  sysBP = "Systolic blood pressure "
	  diaBP = "Diastolic blood pressure"
	  BMI = "Body Mass Index"
	  heartRate = "Heart rate"
	  glucose = "Glucose Level"
	  TenYearCHD = "10-year risk of CHD";
run;

proc means data=work.cleandata;
var cigsperday;
run;

ods html;
PROC PRINT DATA = work.cleandata N;	
RUN;
ODS HTML CLOSE;
