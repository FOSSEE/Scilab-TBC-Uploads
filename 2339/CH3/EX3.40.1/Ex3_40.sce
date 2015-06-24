clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
R=0.29;
Cp=1.005;
P1=2.75;
P2=P1;
V1=0.09;
T1=185+273;
T2=15+273;

//Calculations
V2=(V1*T2)/T1;
m=(P1*100*V1)/(R*T1);
Q=m*Cp*(T2-T1);
printf('The Heat Transfer: %3.3f kJ',Q);
printf('\n');
W=P1*100*(V2-V1);
printf('The Work done: %3.3f kJ',W);
printf('\n');
