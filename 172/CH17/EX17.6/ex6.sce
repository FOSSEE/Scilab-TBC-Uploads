//ques6
//determining mass flow rate through control volume
clear
clc
k=1.4;//constant
R=0.287;//gas constant
To=360;//stagnation Temperature in K 
T=To*0.8333;//Temperature of air in K, 0.8333 stagnation ratio from table
v=sqrt(k*R*T*1000);//velocity in m/s
P=528;//stagnation pressure in kPa
d=P/(R*T);//stagnation density in kg/m^3
A=500*10^-6;//area in m^2
ms=d*A*v;//mass flow rate in kg/s
printf('Mass flow rate at the throat section = %.4f kg/s \n',ms);
//e-exit state
Te=To*0.9381;//exit temperature in K, ratio from table
ce=sqrt(k*R*Te*1000);//exit velocity of sound in m/s
Me=0.573;//Mach number
ve=Me*ce;
Pe=800;//exit pressure in kPa
de=Pe/R/Te;
mse=de*A*ve;
printf(' Mass flow rate at the exit section = %.4f kg/s \n',mse);