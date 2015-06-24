clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=3;
V1=V1*100;      //In kPa
P1=2;
T1=73+273;
P2=7;
R=0.287;
Cv=0.718;
Cp=1.005;

m=(P1*V1)/(R*T1);
T2=(P2*T1)/P1;

U=m*Cv*(T2-T1);
H=m*Cp*(T2-T1);

printf('Change in Internal Energy: %1.2f kJ',U);
printf('\n');

printf('Change in heat Energy: %1.2f kJ',H);
printf('\n')
