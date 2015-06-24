// Exa 5.10
clc;
clear;
close;
// Given data
Vin= 10;// in volt
R=2.2;// in k ohm
R=R*10^3;//in ohm
Ad=10^5;// voltage gain
T= 1;// in ms
T=T*10^-3;// in second
C=1;// in micro F
C=C*10^-6;// in F
I= Vin/R;// in volt
V= I*T/C;// in V
disp(V,"The output voltage at the end of the pulse in volt");
RC_desh= R*C*Ad;
disp(RC_desh,"The closed-loop time constant in second is");
