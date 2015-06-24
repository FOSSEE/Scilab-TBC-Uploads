//Example 4_17
clc;
clear;
close;
format('e',9);
//given data : 
Nd=10^17;//atoms/cm^3
ni=1.5*10^10;//atoms/cm^3
n0=Nd;//atoms/cm^3(For Nd>>ni)
p0=ni^2/n0;//atoms/cm^3
disp(p0,"Equilibrium hole concentration(cm^-3)")
