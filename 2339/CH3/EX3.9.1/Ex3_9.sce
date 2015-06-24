clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=100;
V1=0.25;
T1=100+273;
V2=0.05;
P2=750;
G=1.4;
R=0.298;
n=(log(P2/P1))/(log(V1/V2));
printf('The Index n: %1.2f ',n);
printf('\n');
T2=T1*((P2/P1)^((n-1)/n));
Cv=R/(G-1);
Cp=R+Cv;
m=(P1*V1)/(R*T1);
W=(m*R*(T1-T2))/(n-1);
Q=((G-n)/(G-1))*W;
printf('The Heat change: %2.2f kJ',Q);
printf('\n');
U=m*Cv*(T2-T1);
printf('The change in Internal Energy: %2.2f kJ',U);
printf('\n');
 
