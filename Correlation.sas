*Multicollinearity;
ods pdf;
ods graphics on;
proc corr data=work.cleandata ;
var male 	age 	education 	currentSmoker 	
cigsPerDay 	BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol 	
sysBP 	diaBP 	BMI 	heartRate 	glucose;
run;
ods graphics off;
ods pdf close;


*Simple Logistic per Predictor varibale;
*Predictor Variable>> male 	age 	education 	currentSmoker 	
cigsPerDay 	BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol 	
sysBP 	diaBP 	BMI 	heartRate 	glucose;
ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = male/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = age/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = education/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = currentSmoker/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = CigsPerDay/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = BPMeds/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = prevalentStroke/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = prevalentHyp/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = prevalentHyp/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = diabetes/ Risklimits;                       
run;
ODS html close;


ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = totChol/ Risklimits;                       
run;
ODS html close;


ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = sysBP/ Risklimits;                       
run;
ODS html close;


ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = diaBP/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = BMI/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = heartRate/ Risklimits;                       
run;
ODS html close;

ods html;
proc logistic data=work.cleandata descending ;  
MODEL TEnYearCHD = glucose/ Risklimits;                       
run;
ODS html close;
