//example 18.8
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
sigma=5.67e-8;
T1=1623//K
T2=1923;//K
T3=300;//K
F23=0.06;
A2=pi*0.075^2/4;
A1=pi*0.075*0.15;
F21=1-F23;
F12=A2/A1*F21;
Pe=A1*0.118*sigma*(T1^4-T3^4)+A2*F23*sigma*(T2^4-T3^4);
disp(Pe,"Electrical power required in W");
clear()
