clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
T1=27+273;
V1=0.06;
P1=150;
Ro=8.314;
M=28;

R=Ro/M;
m=(P1*100*V1)/(R*T1);
printf('Mass of gas at design condition: %2.1f kg',m);
printf('\n');

P2=170;
T2=(T1*P2)/P1;
printf('Fusible plug should melt at: %3.0f K',T2);
printf('\n');
