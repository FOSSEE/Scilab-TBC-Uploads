// Exa 7.27
clc;
clear;
close;
// Given data
C1= 1530;// in pF
C2= 162;// in pF
f1=1;// in MHz
f1=f1*10^6;// in Hz
f2=3;// in MHz
f2=f2*10^6;// in Hz
// f1= 1/(2*%pi*sqrt(L*(C1+Cd)))
//  f1= 1/(2*%pi*sqrt(L*(C2+Cd))) and f2= 3*f1 so
Cd= (C1-9*C2)/8;// in pF
disp(Cd,"Self capacitance of the coil in pF")
