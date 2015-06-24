clc;
clear all;
m = 9.1*1e-31; //Mass of electron in kg
e = 1.6*1e-19; // Charge on electron in coulumb
t = 3*1e-14; // Relaxation time in seconds
n = 5.8*1e28; //Number of electrons in cubic meter
rho =m/(n*t*e*e);//The resistivity of metal 
u = 1/(n*e*rho);//The mobility of electron 
disp('Ohm.meter',rho,'The resistivity of metal is');
disp('sqaure meter per volt.second',u,'The mobility of electron is'); 
//slight variation in ans than book.. checked in calculator also(Mistake in textbook)
