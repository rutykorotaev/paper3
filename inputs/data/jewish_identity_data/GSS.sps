
DATA LIST FILE=TEMP FIXED RECORDS=1 TABLE /
BALLOT    1 - 2
JEW    3 - 7
YEAR    8 - 12
ID_    13 - 17
.
VARIABLE LABELS
BALLOT   "ballot used for interview"
JEW   "what sort of jew r is"
YEAR   "GSS year for this respondent"
ID_   "Respondent id number"
.
VALUE LABELS
JEW 
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
1      "Orthodox"
2      "Conservative"
3      "Reform"
4      "None of these"
5      "Other"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 /
BALLOT 
1      "Ballot a"
2      "Ballot b"
3      "Ballot c"
4      "Ballot d"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
.
Missing values JEW (-100 thru -10). 
Missing values BALLOT (-100 thru -10). 


EXECUTE.
