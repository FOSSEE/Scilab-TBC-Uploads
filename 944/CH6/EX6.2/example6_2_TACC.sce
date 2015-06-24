//example 6.2

clear;
clc;

//Given:
T=500;//Temperature[K]
P=100;//Pressure[atm]
a=3.61;//van der waals constant for CO2[atm.L^2.mol^-2]
b=0.0429;//van der waals constant for CO2[L.mol^-1]
R=0.082;//Universal gas constant[atm.K-1.mol^-1]

//To find the molar volume of CO2
x=b+(R*T/P);
y=a/P;
z=a*b/P;
p2 = poly([-z y -x 1], 'Vm', 'c');
t=roots(p2);
printf("The value of molar volume of CO2 is %f L.mol^-1",t(3));





