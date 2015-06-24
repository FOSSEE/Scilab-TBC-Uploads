clc;
clear;
format('v',11);
N=6.022*10^23/107.9;     //as atomic number of silver is 107.9
n=0.01*N;                //1% of N
Q=n*1.602*10^-19;        //charge on the sphere
V=0.001/(10.5*10^3);       //as density of silver is 10.5*10^3kg/m^3
rho_v=Q/V;
disp(rho_v,"the volume charge density(in coulomb per cube meter)=");
F=1*10^-9*8.542/(4*3.14*8.85*10^-12*1^2);        //by coulomb's law
disp(F,"force(in newton)=");
