clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.15;
P1=900;
T1=300+273;
T3=T1;
V2=3*V1;
R=0.287;
Cp=1.005;
G=1.4;
n=1.5;
Cv=0.718;

//Calculations
m=(P1*V1)/(R*T1);
T2=(V2*T1)/V1;
Q1=m*Cp*(T2-T1);
printf('Heat Received: %3.2f kJ',Q1);
printf('\n');

Q2=(m*Cv)*((n-G)/(n-1))*(T3-T2);
Q3=m*R*T3*(log(1/27));
Qr=0-(Q2+Q3);
printf('Heat Rejected: %3.2f kJ',Qr);
printf('\n');

Eff=(1-(Qr/Q1))*100;
printf('Efficiency: %3.2f percent',Eff);
printf('\n');
