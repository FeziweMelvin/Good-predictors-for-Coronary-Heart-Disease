
DATA MYPROJECT; *I will manipulate this dataste;
SET "/home/u48531157/sasuser.v94/SASProject3950336/group_43_train.sas7bdat";
RUN;


DATA REMOVEMISSING;
SET MYPROJECT;
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
	  
IF male EQ 'NA' then delete;
ELSE IF age EQ 'NA' then delete;
ELSE IF education EQ 'NA' then delete;
ELSE IF currentSmoker EQ 'NA' then delete;
ELSE IF cigsPerDay EQ 'NA' then delete;
ELSE IF BPMeds EQ 'NA' then delete;
ELSE IF prevalentStroke EQ 'NA' then delete;
ELSE IF prevalentHyp EQ 'NA' then delete;
ELSE IF diabetes EQ 'NA' then delete;
ELSE IF totChol EQ 'NA' then delete;
ELSE IF sysBP EQ 'NA' then delete;
ELSE IF diaBP EQ 'NA' then delete;
ELSE IF BMI EQ 'NA' then delete;
ELSE IF heartRate EQ 'NA' then delete;
ELSE IF glucose EQ 'NA' then delete;
ELSE IF TenYearCHD EQ 'NA' then delete;
ELSE IF _dataobs_ EQ 'NA' then delete;
RUN;

*These variables contains null otherwise the otherones do not;
DATA M1;SET MYPROJECT;IF education NE 'NA' then delete;
DATA M2;SET MYPROJECT;IF cigsPerDay NE 'NA' then delete;
DATA M3;SET MYPROJECT;IF BPMeds NE 'NA' then delete;
DATA M4;SET MYPROJECT;IF totChol NE 'NA' then delete;
DATA M5;SET MYPROJECT;IF BMI NE 'NA' then delete;
DATA M6;SET MYPROJECT;IF heartRate NE . then delete;
DATA M7;SET MYPROJECT;IF glucose NE 'NA' then delete;
DATA M8;SET MYPROJECT;IF education NE 'NA' then delete;
DATA M9;SET MYPROJECT;IF age NE 'NA' then delete;
DATA M10;SET MYPROJECT;IF currrentSmoker NE 'NA' then delete;
DATA M11;SET MYPROJECT;IF prevalentStroke NE 'NA' then delete;
DATA M12;SET MYPROJECT;IF diabetes NE 'NA' then delete; 
DATA M13;SET MYPROJECT;IF sysBP NE 'NA' then delete;
DATA M14;SET MYPROJECT;IF diaBP NE 'NA' then delete;
DATA M15;SET MYPROJECT;IF prevalentHyp NE 'NA' then delete;
RUN;
PROC APPEND BASE=M1 DATA=M2;
PROC APPEND BASE=M1 DATA=M3;
PROC APPEND BASE=M1 DATA=M4;
PROC APPEND BASE=M1 DATA=M5;
PROC APPEND BASE=M1 DATA=M6;
PROC APPEND BASE=M1 DATA=M7;
PROC APPEND BASE=M1 DATA=M8;
PROC APPEND BASE=M1 DATA=M9;
PROC APPEND BASE=M1 DATA=M10;
PROC APPEND BASE=M1 DATA=M11;
PROC APPEND BASE=M1 DATA=M12;
PROC APPEND BASE=M1 DATA=M13;
PROC APPEND BASE=M1 DATA=M14;
PROC APPEND BASE=M1 DATA=M15;
RUN;

*Printing my dataset; 
ODS HTML;
PROC PRINT DATA=MYPROJECT  N;
TITLE 'This dataset inclues all the residents irrespectively whether they have null values or not';
RUN;
ODS HTML CLOSE;


PROC SORT DATA=M1;
BY _dataobs_;
run;
*The dataset for Nulls;
PROC SORT DATA=M1 NODUPKEY;
BY _dataobs_;
PROC PRINT DATA=M1 N;
TITLE 'This dataset represent the rows that had null';
RUN;


*Printing the dataset that does not have null values;	
ODS HTML;
PROC PRINT DATA= REMOVEMISSING N;
TITLE 'This dataset represents residents who did not have null values';
RUN;
ODS HTML CLOSE;


