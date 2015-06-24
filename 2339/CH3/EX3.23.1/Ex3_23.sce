clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=28;
V1=3;
T1=100+273;
T2=37+273;
G=1.4;
Ro=8.314;

v=V1/m;
R=Ro/m;

P1=(m*R*T1)/V1;

printf('The Specific Volume: %1.3f m^3/kg',v);
printf('\n')

printf('The Initial Pressure: %1.2f kPa',P1);
printf('\n')

P2=(P1*T2)/T1;
printf('The Final Pressure: %1.2f kPa',P2);
printf('\n')

Cv=(R)/(G-1);
Cp=Cv*G;
U=m*Cv*(T2-T1);
H=m*Cp*(T2-T1);

printf('Change in Internal Energy: %1.2f kJ',U);
printf('\n');


printf('Change in Heat energy: %1.2f kJ',H);
printf('\n')
