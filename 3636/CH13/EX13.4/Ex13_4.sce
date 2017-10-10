clear;
clc;
e=1.6*10^-19 //in eV
Nd=2.8*10^21 // donor doping concentration in m^-3
L=6*10^-6 //length in m
epsilon_s=8.854*10^-12*11.8 // in F/m

//Calculation
Vbd=(e*Nd*L^2)/epsilon_s
Ebd=Vbd/L

format("v",7)
disp(Vbd,"Breakdown voltage is (V)= ")//The answers vary due to round off error
format("e",9)
disp(Ebd,"Breakdown electric field is (V/m)= ")
