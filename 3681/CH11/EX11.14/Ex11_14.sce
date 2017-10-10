// Calculating the flux per pole and length and width of pole and winding height and pole height
clc;
disp('Example 11.14, Page No. = 11.40')
// Given Data
// 3 phase star connected selient pole alternator
Q = 2500;// kVA rating
E = 2400;// Voltage rating (in kV)
f = 60;// Frequency (in Hz)
rpm = 225;// R.p.m.
D = 2.5;// Stator bore (in meter)
L = 0.44;// Core length (in meter)
Nspp = 3;// Number of slot per pole per phase
Ncs = 4;// Number of conductors per slot
a = 2;// Circuits per phase
Bp = 1.5;// Flux density in pole core (in Wb per meter square)
df = 30;// Depth of winding (in mm)
Sf = 0.84;// Field widind space factor
Cl = 1.2;// Leakage factor
Kw = 0.95;// Winding factor
qf =1800;// Loss dissipated by field winding
h_insulation = 30;// Height of insulation
// Calculation of the flux per pole and length and width of pole and winding height and pole height
ns = rpm/60;// Synchronous speed (in r.p.s.)
p = 2*f/ns;// Number of poles
S = 3*p*3.5;// Total number of slots
Z = Ncs*S;// Total number of conductors
Tph = int(Z/6);// Turns per phase
Eph =E/3^(1/2);// Voltage per phase
F_pole = Eph*a/(4.44*Tph*f*Kw);// Flux per pole (in Wb)
disp(F_pole,'(a) Flux per pole (Wb) =');
Fp = Cl*F_pole;// Flux in pole body (in Wb)
Ap = Fp/Bp;// Area of pole body (in meter square)
Lp = L;// Length of pole body = Length of armature core
bp = Ap/Lp;// Width of pole body
disp(Lp,'(b) Length of pole body (meter) =');
disp(bp,'    Width of pole body (meter) =');
Iph = Q*1000/(3^(1/2)*E);// Current in each phase
Iz = Iph/a;// Current in each conductor
ATa = 2.7*Iz*Tph*Kw/p;// Armature mmf per pole (in A)
AT_fl = 2*ATa;// Field mmf at full load (in A)
hf = AT_fl/(10^(4)*(Sf*df*10^(-3)*qf)^(1/2));// Height of field winding (in meter)
disp(hf,'(c) Height of field winding (meter) =');
disp(hf+h_insulation*10^(-3),'(d) Height of pole (meter) =');
//in book answers are 0.049 Wb, 0.44 meter, 0.089 meter, 0.16 meter and 0.19 meter respectively.  The answers vary due to round off error
