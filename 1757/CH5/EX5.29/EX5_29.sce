//Example5.29  // To find Slew rate of an op-amp
clc;
clear;
close;
Iq = 15 ; // uA  // bias current
Cm = 30  ; // pF  // internal frequency compensated capacitor
Slewrate = (Iq/Cm);
disp('the Slew rate of an op-amp is = '+string(Slewrate)+' V/u sec');
