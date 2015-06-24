// Exa 6.37
format('v',7);clc;clear;close;
// Given data
f1 = 3;//frequency in MHz
f1 = f1 * 10^6;// in Hz
C1 = 251;//capacitance in pF
C1 = C1  * 10^-12;// in F
f2 = 6;//frequency in MHz
f2 = f2 * 10^6;// in Hz
C2 = 50;//capacitance in pF
C2 = C2 * 10^-12;// in F
// f1 = 1/(2*%pi*(sqrt(L*(C1+Cd))) )    (i)
// f2 = 1/(2*%pi*(sqrt(L*(C2+Cd))) )    (ii)
// From eq(i) and (ii)
Cd = (C1 - (4*C2))/3;// self capacitance of the coil in F
Cd = Cd * 10^12;// in pF
disp(Cd,"The self capacitance of the coil in pF is");
