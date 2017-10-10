// Calculating the size of armature wire and the a.c. resistance of each pahase
clc;
disp('Example 11.10, Page No. = 11.34')
// Given Data
// 3 phase star connected synchronous generator
p = 8;// Number of poles
f = 50;// Frequency (in Hz)
ys = 0.3;// Pole pitch (in meter)
Iz = 100;// Line current (in Ampere)
L = 0.3;// Gross axial length (in meter)
Spp =3;// Slots per pole per phase
Cs = 6;// Conductors per slot
Kc_av = 1.3;// Average eddy current loss factor
// Calculation of the suitable number of slots and conductors per slot
D = ys*p/%pi;// Armature diameter (in meter)
ns = 2*f/p;// Synchronous speed (in r.p.s.)
Va = %pi*D*ns;// Peripheral speed (in meter per second)
S = Spp*3*p;// Total number of slots
Z = S*Cs;// Total number of conductors
Tph = Z/6;// Turns per phase
ac = Iz*Z/(%pi*D);// (in Ampere per meter)
J = (43000/ac)+(Va/16);// Current density (in Ampere per mm square)
as = 100/J;// Area of armature conductor
disp(as,'(a) Area of armature conductor (mm square)=');
L_active = 2*L;// Active length of each turn (in meter)
Lmt = 2*L_active;// Since Total length of a turn is twice the active length (in meter)
resistivity = 0.021;// Resistivity of copper at 75 degree celsius (in ohm per meter)
r_dc = resistivity*Tph*Lmt/as;// D.C. resistance of each phase at 75 degree celsius (in ohm)
r_ac = Kc_av*r_dc;// A.C. resistance of each phase
disp(r_ac,'(b) A.C. resistance of each phase (ohm)=');
//in book answers are 23.8 mm square and 0.099 ohm respectively.  The answers vary due to round off error
