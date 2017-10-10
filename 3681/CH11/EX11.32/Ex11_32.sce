// Calculating the number of stator slots and average flux density
clc;
disp('Example 11.32, Page No. = 11.58')
// Given Data
// 3 phase star connected direct watercooled generator
Q = 588;// MVA rating
E = 22000;// Voltage rating
p =2;// Number of poles
rpm = 2500;// R.p.m.
f = 50;// Frequency (in Hz)
D = 1.3;// Stator bore (in meter)
L = 6;// Core length (in meter)
Nc =2;// Number of conductors per slot
a = 2;// Circuits per phase
ac = 200000;// Ampere conductors per meter
Kw = 0.92;// Winding factor
// Winding is infinitely distributed with a phase spread of 60 degree
// Calculation of the number of stator slots and average flux density
ns = rpm/60;// Speed (r.p.s)
Eph = E/3^(1/2);// Voltage per phase
Iph = Q*10^(6)/(3^(1/2)*E);// Current per phase
Is = Iph/a;// Current in each conductor (in ampere)
Z = %pi*D*ac/Is;// Total number of armature conductors
Tph = int(Z/6+1);// Turns per phase for a three phase machine
Z = 6*Tph;// Actual number of conductors used
S = Z/Nc;// Number of slots
disp(S,'(a) Number of slots =');
F_pole = a*Eph/(4.44*f*Tph*Kw);// Flux per pole (in Wb)
pole_pitch = %pi*D/p;//Pole pitch (in meter)
Bav = F_pole/(pole_pitch*L);// Average flux density (in Wb per meter square)
disp(Bav,'(b) Average flux density (Wb per meter square) =');
//in book answers are 54 and 0.565 Wb per meter square respectively.  The answers vary due to round off error
