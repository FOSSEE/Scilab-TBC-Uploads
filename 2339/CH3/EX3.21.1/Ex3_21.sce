clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V=1.6;
P=1;
m=2;
T=17+273;
G=1.4;

R=(P*100*V)/(m*T);
Cv=(R)/(G-1);
printf('The Value of Cv: %1.2f kJ/kg K',Cv);
printf('\n');

Cp=Cv+R;
printf('The Value of Cp: %1.3f kJ/kg K',Cp);
printf('\n')
