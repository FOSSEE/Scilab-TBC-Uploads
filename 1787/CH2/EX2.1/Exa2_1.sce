//Exa 2.1
clc;
clear;
close;
//given data
E=2.1;//in eV
E=E*1.602*10^-19;//in Joule
m=9.107*10^-31;//in Kg
//Formula : E= (m*v^2)/2
v=sqrt(2*E/m);//in m/s
disp(v,"Velocity of electron at fermi level in m/s : ");