clc;
clear all;
n = 5.8*1e28; // Electrons density in electrons per cube meter
rho = 1.58*1e-8; //Resistivity of wire in ohm meter
m = 9.1*1e-31; // Mass of electron 
e = 1.6*1e-19; // Charge of electron in coloumb
E = 1e2; // Electric field
t = m/(rho*n*e^2);
u = (e*t)/m;
v = u*E; 
disp('s',t,'The relaxation time is ');
disp('m^2/volt sec',u,'The mobility of electrons ');
disp('m/s',v,'The average drift velocity for an electric field of 1V/cm is ');
//slight variation in ans than book.. checked in calculator also
