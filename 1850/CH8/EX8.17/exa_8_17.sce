// Exa 8.17
clc;
clear;
close;
//given data
C=0.1;// in  nF
C=C*10^-9;//in F
V=5;//in V
t=1;// in micro S
t=t*10^-6;// in sec
// v= V*(1-%e^(-t/(R*C)))
// Since hold value does not drop by more than 0.5% or by 0.005 V, hold value is 0.995 V, Thus
// 0.995*V= V*(1-%e^(-t/(R*C)))
// or %e^(-t/(R*C))= 1-0.995 = 0.005
R= t/(C*log(1/0.005));// in ohm
I= V/R*(1-%e^(-t/(R*C)));// Maximum currnet through R in amphere
disp(I*10^3,"Maximum permissible leakage current through the hold capacitor in mA")
