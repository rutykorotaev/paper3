
/* Replace '/'; with the location where you have saved your GSS.dat file, or your working directory */
LIBNAME '/';
PROC FORMAT;

VALUE GSP001X
-100 = ".i:  Inapplicable"
-99 = ".n:  No answer"
-98 = ".d:  Do not Know/Cannot Choose"
-97 = ".s:  Skipped on Web"
1 = "Orthodox"
2 = "Conservative"
3 = "Reform"
4 = "None of these"
5 = "Other"
-96 = ".z:  Variable-specific reserve code"
-95 = ".u:  Uncodable"
-90 = ".r:  Refused"
-80 = ".x:  Not available in this release"
-70 = ".y:  Not available in this year"
-60 = ".j:  I do not have a job"
-50 = ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40 = ".m:  DK, NA, IAP"
 ;
VALUE GSP002X
1 = "Ballot a"
2 = "Ballot b"
3 = "Ballot c"
4 = "Ballot d"
-100 = ".i:  Inapplicable"
-99 = ".n:  No answer"
-98 = ".d:  Do not Know/Cannot Choose"
-97 = ".s:  Skipped on Web"
-96 = ".z:  Variable-specific reserve code"
-95 = ".u:  Uncodable"
-90 = ".r:  Refused"
-80 = ".x:  Not available in this release"
-70 = ".y:  Not available in this year"
-60 = ".j:  I do not have a job"
-50 = ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40 = ".m:  DK, NA, IAP"
 ;

DATA GSS.GSS;

LENGTH 
BALLOT    1
JEW    4
YEAR    4
ID_    4
;

LABEL 
BALLOT = "ballot used for interview"
JEW = "what sort of jew r is"
YEAR = "GSS year for this respondent"
ID_ = "Respondent id number"
;

INPUT 
BALLOT    1 - 2
JEW    3 - 7
YEAR    8 - 12
ID_    13 - 17
;

FORMAT 
JEW   GSP001X.
BALLOT   GSP002X.
;

PROC CONTENTS DATA=GSS.GSS;
/* Replace "/GSS.dat" with the location where you have saved your exported GSS.dat file */
PROC IMPORT datafile='/GSS.dat'
out=xl dbms=dlm replace;
RUN;
