//example 5.42

clear;
clc;

//Given:
disp("Zn(s)|ZnCl2(soln)||AgCl(s)|Ag-Ag|AgCl(s)|ZnCl2(soln)|Zn(s)");
m1=0.02;//concentration[M]
Y1=0.65;//mean ionic activity coefficient
m2=1.5;//concentration[M]
Y2=0.29;//mean ionic activity coefficient 
R=8.314;//Universal gas constant[J/K/mol]
T=298;//Temperature [K]
F=96500;//Faraday's constant[coulomb/mol]

//To find the overall e.m.f of the above cell
E=R*T*(log(m2*Y2/m1/Y1))*3/2/F;//[volts]
printf("The overall e.m.f of the cell is %f volts",E);













