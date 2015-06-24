clear;
clc;
//page no. 152

v1 = 100;// fps
p1 = 50;// psia
T1 = 300;// degreeF
v2 = 500;// fps
Cp = 186.5;
gam = 1.4;
T2 = T1 - (v2^2 - v1^2)/(2*36.2*Cp);
p2 = p1*(1 - (v2^2 - v1^2)/(2*36.2*53.3*(T1+460)*(gam/(gam-1))))^(1/0.286);
printf('T2 = %d degreeF',T2);
printf('\n p2 = %.1f psia',p2);

//there is an error in the answer given in textbook
