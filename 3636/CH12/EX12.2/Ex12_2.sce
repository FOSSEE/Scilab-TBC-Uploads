clc;
clear;
epsilon_0=8.85*10^-14 //in F/cm
epsilon_i=3.9 //in F/cm
tox=0.5*10^-4 //in cm

//Calculation
C=(epsilon_0*epsilon_i)/tox

format("e",9)
disp(C,"Capacitance per unit area (F/cm^2)= ")
//The answer provided in the textbook is wrong
