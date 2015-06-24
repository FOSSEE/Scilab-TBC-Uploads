// Exa 11.5
clc;
clear;
close;
//given data
R1= 2.5;// in kohm
R1= R1*10^3;// in ohm
R2= 1;// in kohm
R2= R2*10^3;// in ohm
V_REF= 1.25;// in volt
I= V_REF/R2;// in amp
// This current also flows through R1. So the output voltage
V_out= I*(R1+R2);// in volt
disp(V_out,"Output voltage in volt")
