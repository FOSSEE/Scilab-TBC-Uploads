// Calculating the instantaneous radial force and instantaneous axial force on the h.v. winding under short circuit conditions
clc;
disp('Example 5.17, Page No. = 5.98')
// Given Data
// 7500/435 V, single phase core type transformer
Q = 575;// kVA rating
f = 50;// Frequency (in Hz)
u0 = 4*%pi*10^(-7);
Z_pu = 0.036;// Per unit impedance
T = 190;// h.v winding turns
Lmt = 1.25;// Length of mean turn (in meter)
Lc = 0.35;// Height of coils (in meter)
m = 1.8;// Doubling effect multiplier
a = 0.015;// Width of duct (in meter)
bp = 0.027;// Width of h.v. winding (in meter)
bs = 0.023;// Width of l.v. winding (in meter)
k = 0.05;// Since the h.v. winding is 5% shorter than the l.v. winding at one end
// Calculation of the instantaneous radial force
I_fl = Q*1000/7500;// Rms value of full load current (in Ampere)
i = m*2^(1/2)*(1/Z_pu)*I_fl;// Instantaneous peak value of short circuit current (in Ampere)
Fr = u0/2*(i*T)^(2)*Lmt/Lc;// Instantaneous radial force on the h.v. coil (in N)
disp(Fr,'(a) Instantaneous radial force on the h.v. winding (N)=');//in book answer is 2380000 (N).  The answers vary due to round off error
// Calculation of the instantaneous axial force
Fa = u0/2*k*(i*T)^(2)*Lmt/(2*(a+bp+bs));// Total instantaneous radial force on the h.v. coil (in N)
disp(Fa,'(b) Instantaneous axial force on the h.v. winding (N)=');
//in book answer is 3200000 (N).  The provided in the textbook is wrong
disp('This shows that there is a very large axial force, even though one of the winding is only 5% shorter than the other at one end')
