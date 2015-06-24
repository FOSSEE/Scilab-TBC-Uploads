clc;funcprot(0);//EXAMPLE 17.7
// Initialisation of Variables
N=2000;...........................//Engine rpm
k=0.5;..............................//Four stroke engine
Disp=0.025;........................//Engine displacement in m^3
Pmb=6;..............................//Brake mean effective pressure in bar
mf=0.018;............................//Fuel consumption in kg/s
Cf=42000;............................//Calorific value of fuel in kJ/kg
//Calcuations 
BP=(Pmb*Disp*N*k*10)/(6);................//Brake power in kW
etaBT=BP/(mf*Cf);.................//Brake thermal efficiency
disp(BP,"The Brake power (in kW):")
disp(etaBT*100,"Brake thermal efficiency (in %):")
