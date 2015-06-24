//Example 7.16 // strain
clc;
clear;
close;
//given data :
Rg=100; // in ohm
Rsh=80000; // in ohm
Gf=2.1; // 
e=(1/Gf)*(Rg/(Rg+Rsh))*10^6;
disp(e,"the strain,e(microstrain) = ")
