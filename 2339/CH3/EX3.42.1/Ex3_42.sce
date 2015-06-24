clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
D=1;
h=4;
P1=100;
T1=27+273;
P2=125;
Cp=14.307;
Cv=10.183;
V1=(22/7)*(1/4)*(D*D*h);
R=Cp-Cv;
m=(P1*V1)/(R*T1);
T2=(P2*T1)/P1;
Q=m*Cv*(T2-T1);
printf('The Heat Transfer: %3.0f kJ',Q);
printf('\n');
