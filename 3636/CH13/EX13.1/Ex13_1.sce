clear;
clc;
l=10*10^-6 //length in m
f=10*10^9 //frequency in Hz
n=2*10^14 // n type doping concentration in cm^-3
e=1.6*10^-19 //in J
E=3200 //electric field in V/cm

//Calculation
vd=l*f //converting from m^2 to cm^2
J=e*n*vd
myu=-vd/E

format("v",7)
disp(vd,"Drift velocity (cms^-1)= ")
format("v",9)
disp(J,"current density (A/cm^2)= ") 
disp(myu,"negative electron mobility (cm^2/Vs)= ") //The answer provided in the textbook is wrong
