clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.6;
P1=1;
T1=90+273;
V2=0.18;
P2=5;
R=0.287;
G=1.4;

m=(P1*100*V1)/(R*T1);
printf('The mass of Gas: %3.4f kg',m);
printf('\n');
n=(log(P2/P1))/(log(V1/V2));
printf('The value of n: %3.3f ',n);
printf('\n');
Cv=R/(G-1);
T2=((P2*V2)/(P1*V1))*T1;
U=m*Cv*(T2-T1);
printf('The change in Internal Energy: %3.3f kJ',U);
printf('\n');
