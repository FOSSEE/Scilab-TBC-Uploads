// Exa 2.6
clc;
clear;
close;
// Given data
// For silicon
q=1.6*10^-19;// in C
ni= 2.5*10^12;// in /cm^3
miu_n= 1700;// in cm^2/Vs
miu_p= 600;// in cm^2/Vs
sigma= 0.2;// in (Ωm)^-1
// Formula sigma= q*n*miu_n
n= sigma/(q*miu_n);// in /cm^3
p= ni^2/n;// in /cm^3
disp("For silicon")
disp(n,"Concentration of electron in /cm^3 is : ")
disp(p,"Concentration of holes in /cm^3 is : ")
// For germanium
ni= 3.4*10^15;// in /cm^3
miu_n= 3600;// in cm^2/Vs
miu_p= 1600;// in cm^2/Vs
sigma= 150;// in (Ωm)^-1
p= sigma/(q*miu_p);// in /cm^3
n= ni^2/p;// in /cm^3
disp("For germanium")
disp(n,"Concentration of electron in /cm^3 is : ")
disp(p,"Concentration of holes in /cm^3 is : ")
