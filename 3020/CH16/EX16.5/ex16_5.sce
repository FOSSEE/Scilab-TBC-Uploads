clc;
clear all;
r = 1.54e-8; // Resistivity of silver in ohm per meter
E = 100; // Electric field along wire in v/m
cc = 5.8e28; // Carrier concentration of electron per cubic meter
e = 1.6e-19; // Charge of an electron
u = 1/(r*cc*e);// Mobility of electron 
vd = u*E;// Drift velocity
disp('m^2/(V.s)',u,'The mobility of electron is')
disp('m/s',vd,'Drift velocity is')
 
