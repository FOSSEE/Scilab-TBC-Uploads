// Calculating the leakage reactance of the transformer referred to the h.v. side
clc;
disp('Example 5.13, Page No. = 5.89')
// Given Data
// 6600/400 V, delta/star 3-phase core type transformer
Q = 300;// kVA rating
f = 50;// Frequency (in Hz)
u0 = 4*%pi*10^(-7);
Tp = 830;// h.v winding turns
Lmt = 0.9;// Length of mean turn (in meter)
Lc = 0.5;// Height of coils (in meter)
a = 0.015;// Width of duct between h.v and l.v. windings (in meter)
bp = 0.025;// Width of h.v. winding (in meter)
bs = 0.016;// Width of l.v. winding (in meter)
// Calculation of the leakage reactance of the transformer referred to the h.v. side
Xp = 2*%pi*f*u0*Tp*Tp*Lmt/Lc*(a+(bp+bs)/3);// Leakage reactance referred to the primary side (ohm)
disp(Xp,'(a) Leakage reactance referred to the primary side (ohm)=');
// If the l.v. winding divided into two parts, one on each side of h.v. winding
Xp = %pi*f*u0*Tp*Tp*Lmt/Lc*(a+(bp+bs)/6);// Leakage reactance referred to the primary side (ohm)
disp(Xp,'(b) Leakage reactance referred to the primary side (ohm)=');
//in book answers are 14 ohm and 5.36 ohm respectively.  The answers vary due to round off error
