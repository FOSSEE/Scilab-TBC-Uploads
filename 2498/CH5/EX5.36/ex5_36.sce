// Exa 5.36
clc;
clear;
close;
format('v',5)
// Given data
C1 = 300;// in pF
C2 = 100;// in pF
Ceq = (C1*C2)/(C1+C2);// in pF
Ceq = Ceq * 10^-12;// in F
L = 50;// in µH
L = L * 10^-6;// in H
// The frequency of oscillation 
f = 1/(2*%pi*sqrt(L*Ceq));// in Hz
f = f * 10^-6;// in MHz
disp(f,"The frequency of oscillation in MHz is");
// For maintaining oscillation, A_loop >=1 and Aopenloop*Beta = 1;
// Beta = C2/C1;
Aopenloop = C1/C2;
disp(Aopenloop,"The minimum gain for maintaining oscillation is");
