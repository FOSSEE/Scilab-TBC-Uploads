// Calculating the instantaneous radial force on the h.v. winding if a short circuit occurs at the terminals of the l.v. winding with h.v. energised and the force at full load
clc;
disp('Example 5.16, Page No. = 5.97')
// Given Data
// 6600/400 V, delta/star 3-phase core type transformer
Q = 1000;// kVA rating
f = 50;// Frequency (in Hz)
u0 = 4*%pi*10^(-7);
T = 500;// h.v winding turns
Lmt = 1.3;// Length of mean turn (in meter)
Lc = 0.6;// Height of winding (in meter)
m = 1.8;// Doubling effect multiplier
// Calculation of the per unit leakage reactance
I_fl = Q*1000/(3*6600);// Full load current per phase on h.v. side (in Ampere)
i = m*2^(1/2)*(1/0.05)*I_fl;// Instantaneous peak value of short circuit current (in Ampere)
Fr = u0/2*(i*T)^(2)*Lmt/Lc;// Total instantaneous radial force on the h.v. coil (in N)
disp(Fr,'Total instantaneous radial force on the h.v. coil (N)=');
Fr = u0/2*(I_fl*T)^(2)*Lmt/Lc;// Force at full load (in N)
disp(Fr,'Force at full load (N)=');
disp('This shows that the forces under short circuit conditions are considerably large as compared with forces at full load')
//in book answers are 2330000 (N) and 866 (N).  The answers vary due to round off error
