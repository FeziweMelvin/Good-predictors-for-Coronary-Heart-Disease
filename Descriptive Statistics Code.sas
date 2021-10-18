*Descriptive Statistics;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR male;
HISTOGRAM male/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients Toatal cholesterol level';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR Age;
HISTOGRAM Age/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients Age';
RUN;
ODS HTML 
CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR Education;
HISTOGRAM Education/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients education Level';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR currentSmokerSmoker;
HISTOGRAM currentSmoker/VSCALE=COUNT;
TITLE 'Descriptive Statistics for patients whether they smoke or not';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR cigsperday;
HISTOGRAM cigsperday/VSCALE=COUNT;
TITLE 'Descriptive Statistics for number of cigarrates smoked by patients ';
RUN;
ODS HTML CLOSE;


ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR BPMeds;
HISTOGRAM BPMeds/VSCALE=COUNT;
TITLE 'Descriptive Statistics for patients whether they take Blood pressure medication or not';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR prevalentStroke;
HISTOGRAM prevalentStroke/VSCALE=COUNT;
TITLE 'Descriptive Statistics whether a patients had stroke previously';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR prevalentHyp;
HISTOGRAM prevalentHyp/VSCALE=COUNT;
TITLE 'Descriptive Statistics whether a patient was hypertensive or not';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR Diabetes;
HISTOGRAM Diabetes/VSCALE=COUNT;
TITLE 'Descriptive Statistics whether a patient was had diabetes or not';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR totChol;
HISTOGRAM totChol/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients Total cholesterol level';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR sysBP;
HISTOGRAM sysBP/VSCALE=COUNT;
TITLE 'Descriptive Statistics for systolic blood pressure';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR diaBP;
HISTOGRAM diaBP/VSCALE=COUNT;
TITLE 'Descriptive Statistics for diastolic blood pressure';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR BML;
HISTOGRAM BMI/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients BMI';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR heartRate;
HISTOGRAM heartRate/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients Heart rate';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC UNIVARIATE DATA=WORK.CLEANDATA;
VAR glucose;
HISTOGRAM glucose/VSCALE=COUNT;
TITLE 'Descriptive Statistics for Patients Glucose level';
RUN;
ODS HTML CLOSE;
