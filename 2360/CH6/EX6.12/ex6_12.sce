// Exa 6.12
format('v',7);clc;clear;close;
// Given data
f1 = 2;//frequency in MHz
f1 = f1 * 10^6;// in Hz
C1 = 500;// in pF
C2 = 60;// in pF
// f1 = 1/(2*%pi*sqrrt(L*(C1+Cd)))  (i)
// f2 = 1/(2*%pi*sqrrt(L*(C2+Cd)))  (ii)
// and f2 = 2.5*f1      (iii)
//From eq(i),(ii) and (iii)
Cd = (C1 - (6.25*C2))/5.25;// value of self capacitance in pF
disp(Cd,"The value of self capacitance in pF is");
