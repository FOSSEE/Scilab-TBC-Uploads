// Exa 7.30
clc;
clear;
close;
// Given data
f1= 800;// in kHz
f1=f1*10^3;// in Hz
f2= 2.5;// in MHz
f2=f2*10^6;// in Hz
C1=95;// in pF
C1=C1*10^-12;// in F
// L= 1/(omega1^2*(C1+Cd))        (i)
// L= 1/(omega2^2*Cd)                (ii)
// From eq(i) and eq(ii)
Cd= f1^2*C1/(f2^2-f1^2);// in F
disp(Cd*10^12,"Self capacitance of the radio coil in pF");
