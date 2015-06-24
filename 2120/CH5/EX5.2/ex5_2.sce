//Exa 5.2
clc;
clear;
close;
// Given data
m = 2;// in kg per min
m = m / 60;// in kg per sec
W = 20;// in kW
h1 = 1400;// in kJ/kg
h2 = 1300;// in kJ/kg
Q = (m * (h2 - h1)) + W;// in kJ/s
disp(Q,"Rate of heat transfer to the water jacket in kJ/sec");
 
