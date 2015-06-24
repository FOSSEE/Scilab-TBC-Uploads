// Exa 6.4
clc;
clear;
close;
// Given Data
f= 1;// in kHz
f= f*10^3;// in Hz
// Vout/Vin= 10
R1= 100;// in k ohm
R1=R1*10^3;// in ohm
R2= 1000;// in k ohm
R2=R2*10^3;// in ohm
omega= 2*%pi*f;
// Vout/Vin at a 3 dB frequency of 1 kHz = 1/sqrt(2) = omega*R2*C/sqrt(1+omega^2*R1^2*C2)
C= sqrt(1/(omega^2*(2*R2^2-R1^2)));// in F
disp(R1*10^-3,"Value of R1 in k ohm");
disp(R2*10^-6,"Value of R2 in k ohm");
disp(C,"Value of C in k ohm");
