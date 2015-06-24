// Exa 6.14
format('v',7);clc;clear;close;
// Given data
C1 = 450;//capacitance in pF
C1 = C1 * 10^-12;// in F
C2 = 60;//capacitance in pF
C2 = C2 * 10^-12;// in F
// f1 = 1/(2*%pi*(sqrt(L*(C1+Cd))))     (i)
// f2 = 1/(2*%pi*(sqrt(L*(C2+Cd))))     (ii)
// and f2 = 2.5*f1      (iii)
// from eq(i),(ii) and (iii)
Cd = (C1 - (6.25*C2))/5.25;// value of self capacitance in F
Cd = Cd * 10^12;// in pF
disp(Cd,"The value of self capacitance in pF is");
