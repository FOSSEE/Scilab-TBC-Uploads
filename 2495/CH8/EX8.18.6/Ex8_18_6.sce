clear
clc
DelG1=-237.23;//in kJ
DelG2=79.71;//in kJ
n=2;//
DelG=(DelG1+(n*DelG2));//in kJ
F=96500;//in C
T=298;//in K
E=-((DelG*10^3)/(n*F));//in V
printf('E=%.3f V',E)
DelH1=-285.85;//in kJ
DelH2=56.9;//in kJ
DelH=(DelH1+(n*DelH2));//in kJ
dEdT_p=((DelH-DelG)*10^3)/(n*F*T);//in V/K
printf('\ndEdT_p=%.5f V/K',dEdT_p)

//error in solution
////There are some errors in the solution given in textbook
//page 484
