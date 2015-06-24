clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
T1=25+273;
T2=145+273;
m=2;
R=267;
G=1.4;
Cv=R/(G-1);
printf('The value of Cv: %3.1f J/kg K',Cv);
printf('\n');
Cp=G*Cv;
printf('The value of Cp: %3.1f J/kg K',Cp);
printf('\n');
U=m*Cv*(T2-T1)*(1/1000);
printf('The change in Internal Energy: %3.1f kJ',U);
printf('\n');
H=m*Cp*(T2-T1)*(1/1000);
printf('The Heat Transfer: %3.1f kJ',H);
printf('\n');
