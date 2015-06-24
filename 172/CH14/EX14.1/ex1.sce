//ques1
//to determine the sublimation pressure of water
clear
clc
//from table in appendix B.1.5
T1=213.2;//K, Temperature at state 1
P2=0.0129;//kPa, pressure at state 2
T2=233.2;//K, Temperature at state 2
hig=2838.9;//kJ/kg, enthalpy of sublimation 
R=.46152;//Gas constant 
//using relation log(P2/P1)=(hig/R)*(1/T1-1/T2) 
P1=P2*exp(-hig/R*(1/T1-1/T2));
printf('Sublimation Pressure = %.5f kPa \n',P1);