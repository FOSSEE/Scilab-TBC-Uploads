//Estimate free energy change during recrystallization
//Ex:12.3
clc;
clear;
close;
e=51;//Young modulous in GPa
v=0.22;//poisson ratio
g=e/(2*(1-v));//shear modulous in GPa
b=2*10^-10;
ue=(1/2)*g*10^9*b^2*10^12;//in J/m^3
disp(ue,"Change in free energy during recrysatllization (in J/m^3) = ");