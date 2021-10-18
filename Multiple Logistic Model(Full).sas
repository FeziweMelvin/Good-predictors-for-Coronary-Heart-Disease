*Multiple logistic model (Full model);

ODS HTML;
PROC LOGISTIC DATA=WORK.cleandata descending ; 
MODEL TEnYearCHD = male 	age 	education 	currentSmoker 	cigsPerDay 	
BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol  sysBP 	diaBP 	BMI 	heartRate 	glucose 
;
RUN;
ODS HTML CLOSE;
 
