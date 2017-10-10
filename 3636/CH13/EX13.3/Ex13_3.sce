clear;
clc;
J=20*10^3 //in kA/cm^2
e=1.6*10^-19 //in C
Nd=2*10^15 //in cm^-3

//Calculation
vz=J/(e*Nd)

format("e",9)
disp(vz,"avalanche-zone velocity is (cm/s)= ")

 
