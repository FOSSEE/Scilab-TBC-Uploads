// Exa 5.6
clc;
clear;
close;
// Given data
R= 10;// in k ohm
Rp= 1;// in k ohm
// Let R1= (1+2*R/Rp)
R1= (1+2*R/Rp);
// output voltage, V5= R1*(V2-V1)
disp("Output voltage in volt is : "+string(R1)+"*(V2-V1)");

