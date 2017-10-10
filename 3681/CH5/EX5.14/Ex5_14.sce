// Calculating the per unit leakage reactance
clc;
disp('Example 5.14, Page No. = 5.90')
// Given Data
// 2000/400 V, single phase shell type transformer
Q = 100;// kVA rating
f = 50;// Frequency (in Hz)
u0 = 4*%pi*10^(-7);
Tp = 200;// h.v winding turns
Lmt = 1.5;// Length of mean turn (in meter)
W = 0.12;// Width of winding (in meter)
a = 0.016;// Width of duct between h.v and l.v. windings (in meter)
bp = 0.04;// Width of h.v. winding (in meter)
bs = 0.036;// Width of l.v. winding (in meter)
// Calculation of the per unit leakage reactance
Xp = %pi*f*u0*Tp*Tp/2*Lmt/W*(a+(bp+bs)/6);// Leakage reactance referred to the primary side (ohm)
I_hv = Q*10^(3)/2000;// H.V. winding current at full load (in ampere)
Xp_pu = Xp*I_hv/2000;// Per unit leakage reactance
disp(Xp_pu,'Per unit leakage reactance=');
//in book answer is 0.0353.  The answers vary due to round off error
