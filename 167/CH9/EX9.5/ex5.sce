//ques5
//The Simple Ideal Brayton Cycle
clear
clc
//Process 1-2 (isentropic compression of an ideal gas)
T1=300;//initial temp in K
//from table
h1=300.19;//enthalpy of heat at state 1 in kJ/kg
Pr1=1.386;//reduced pressure at state 1 
r=8;//constant ratio
Pr2=r*Pr1;//reduced pressure at state 2, r=P2/P1
//using table corresponding to Pr2
T2=540;//temperature at state 2 in K
printf('(a) Temperature at compressor exit T2 = %.0f K \n',T2);
h2=544.35;//enthalpy of heat at state 2 
//Process 3-4 (isentropic expansion of an ideal gas)
T3=1300;//temperature at state 3 in K
h3=1395.97;//enthalpy of heat at state 3 in kJ/kg
Pr3=330.9;//reduced pressure at state 3 
Pr4=Pr3/r;//reduced pressure at state 4, 1/r=P4/P3
//from table
T4=770;//temperature at state 4 in K
printf('    Temperature at turbine = %.0f K \n',T4);
h4=789.37;//enthalpy of heat  at state 4 in kJ/kg
//To find the back work ratio
Win=h2-h1//work input in kJ/kg
Wout=h3-h4//work output in kJ/kg
Rbw=Win/Wout;//back work ratio
printf(' (b) Back work ratio = %.3f \n',Rbw);
Qin=h3-h2;//heat input in kJ/kg
Wnet=Wout-Win;//net work
nth=Wnet/Qin;//thermal efficiency
printf(' (c) Thermal efficiency = %.3f ',nth);
