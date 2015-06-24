// Exa 6.10
format('v',7);clc;clear;close;
// Given data
C1 = 550;// in pF
C2 = 110;// in pF
Cd = (C1-(4*C2))/3;// distributed capacitance in pF
disp(Cd,"The distributed capacitance in pF is");
Cd = Cd * 10^-12;// in F
C1 = C1 * 10^-12;// in F
f1 = 1.5;// in MHz
f1 = f1 * 10^6;// in Hz
// f1 = 1/(2*%pi*(sqrt( L*(C1+Cd))));
L = ((1/(2*%pi*f1))^2) * (1/(C1+Cd));// distributed inductance in H
L = L * 10^6;// in µH
disp(L,"The distributed inductance in µH is");
