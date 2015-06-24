//Example 22.2 // critical temperature
clc;
clear;
//given data :
Tc1=4.185;//critical temperature in kelvin
M=199.5;// isotropic mass 
M1=203.4;//isotropic mass
Tc2=Tc1*(M/M1)^.5;// formula
disp(Tc2,"critical temperature in kelvin") 
