//ques3
//Heat Rejection by a Refrigerator
clear
clc
//(a)
Ql=6;//heat of sink in kJ/s
W=2;//work done on refrigerator in kW
COPr=Ql/W;//coefficient of performance of refrigerator
printf(' (a) The coefficient of performance of the refrigerator is = %.0f \n',COPr);

//(b)
Qh=Ql+W;//heat of reservoir in kJ/s
printf('  (b)The rate at which heat is rejected to the room that houses the refrigerator = %.0f kJ/s \n',Qh);