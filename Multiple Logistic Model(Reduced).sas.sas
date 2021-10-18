
ODS HTML;
PROC LOGISTIC DATA=WORK.cleandata descending ; *plots=roc; 
class male education currentSmoker prevalentStroke prevalentHyp diabetes BPmeds;
MODEL TEnYearCHD = male 	age 	education 	currentSmoker 	cigsPerDay 	
BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol  sysBP 	diaBP 	BMI 	heartRate 	glucose 
/EXPB SELECTION=forward SLENTRY= 0.05 Slstay=0.1 ;
RUN;
ODS HTML CLOSE;
 
 

 
ODS HTML;
PROC LOGISTIC DATA=WORK.cleandata descending ; *plots=roc; 
class male education currentSmoker prevalentStroke prevalentHyp diabetes BPmeds;
MODEL TEnYearCHD = male 	age 	education 	currentSmoker 	cigsPerDay 	
BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol  sysBP 	diaBP 	BMI 	heartRate 	glucose 
/EXPB SELECTION=backward SLENTRY= 0.05 Slstay=0.1 ;
RUN;
ODS HTML CLOSE;
 
 
 ODS HTML;
PROC LOGISTIC DATA=WORK.cleandata descending ; *plots=roc; 
class male education currentSmoker prevalentStroke prevalentHyp diabetes BPmeds;
MODEL TEnYearCHD = male 	age 	education 	currentSmoker 	cigsPerDay 	
BPMeds 	prevalentStroke 	prevalentHyp 	diabetes 	totChol  sysBP 	diaBP 	BMI 	heartRate 	glucose 
/EXPB SELECTION=stepwise SLENTRY= 0.05 Slstay=0.1 ;
RUN;
ODS HTML CLOSE;
 
