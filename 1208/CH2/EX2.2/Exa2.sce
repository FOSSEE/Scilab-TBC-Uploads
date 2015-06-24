//Exa2
clc;
clear;
close;
//For first year
P1=500;//in rupees
n=3;//in years
r=10;//% per annum
T=1//in year
I1st=(P1*r*T)/100;
A1=P1+I1st;
//For second year
P2=A1;
I2nd=(P2*r*T)/100;
A2=P2+I2nd;
//For third year
P3=A2;
I3rd=(P3*r*T)/100;
A3=P3+I3rd;
//compound interest or 3 years
CI=A3-P1;
disp("Compound interest is : "+string(CI)+" Rupees.")




