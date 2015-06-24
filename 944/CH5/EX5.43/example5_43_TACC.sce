//example 5.43

clear;
clc;

//Given:
disp("H2(g,1atm)|HCl(aq)|HCl(aq)|H2(g,1atm)");
m1=0.02;//concentration[M]
Y1=0.88;//mean ionic activity coefficient
m2=1;//concentration[M]
Y2=0.81;//mean ionic activity coefficient
R=8.314;//universal gas constant[J/K/mol]
T=298;//Temperature[K]
F=96487;//Faraday's constant[coulombs/mol]
t=0.178;//Tranference number of Cl-1

//To find the e.m.f of the cell
E=-2*t*R*T*(log(m1*Y1/m2/Y2))/F;//e.m.f of the cell[volts]
printf("The e.m.f of the cell is %f volts",E);








