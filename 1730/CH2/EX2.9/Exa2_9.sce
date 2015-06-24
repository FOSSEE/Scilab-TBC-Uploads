//Exa2.9
clc;
clear;
close;
//given data
rho=0.5; // in ohm-meter
J=100; //in A/m^2
miu_e=0.4; //in m^2/V-s
E=J*rho; // since E=J/sigma
// Formula v=miu_e*E
v=miu_e*E;
disp(" Electron drift velocity is : "+string(v)+" m/s");
disp("Time taken by the electron to travel 10*10^-6 m in crystal")
// let Time taken by the electron to travel 10*10^-6 m in crystal = t
t=(10*10^-6)/v;
disp(string(t)+" second");
