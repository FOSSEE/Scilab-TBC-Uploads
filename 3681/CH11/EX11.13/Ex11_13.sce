// Calculating the stator bore and stator core length and turns per phase and armature mmf per pole and mmf for air gap and field current
clc;
disp('Example 11.13, Page No. = 11.37')
// Given Data
// 3 phase synchronous generator
Q = 1250;// kVA rating
E = 3300;// Voltage rating (in kV)
f = 50;// Frequency (in Hz)
rpm = 300;// R.p.m.
Bav = 0.58;// Specific magnetic loading (in Wb per meter square)
ac = 33000;// Specific electric loading (in Ampere per meter)
lg = 5.5;// Gap length (in mm)
T_field = 60;// Field turns per pole
SCR = 1.2;// Short circuit ratio
Kw = 0.955;// Winding factor
Va = 30;// Peripheral speed (in meter per second)
// Calculation of the stator bore and stator core length and turns per phase and armature mmf per pole and mmf for air gap and field current
ns = rpm/60;// Synchronous speed (in r.p.s.)
p = 2*f/ns;// Number of poles
Co = 11*Kw*Bav*ac*10^(-3);// Output co-efficient
D2L = Q/(Co*ns);// Product of D*D*L
D = Va/(%pi*ns);// Stator bore (in meter)
disp(D,'Stator bore (meter) =');
L = D2L/D^(2);// Stator core length (in meter)
disp(L,'Stator core length (meter)=');
A_pole = %pi*D*L/p;// Area per pole
F_pole = Bav*A_pole;// Flux per pole
Eph = E/3^(1/2);// Voltage per phase
Tph = int(Eph/(4.44*f*F_pole*Kw));// Turns per phase
disp(Tph,'Turns per phase =');
Iph = Q*1000/(3^(1/2)*E);// Current per phase
ATa = 2.7*Iph*Tph*Kw/p;// Armature mmf per pole (in A)
disp(ATa,'Armature mmf per pole (Ampere)=');
A_effective = 0.6*A_pole;// Effective gap area is 0.6 times the actual area
KgBg = F_pole/A_effective;// Effective gap density (in Wb per meter square)
mmf_airgap = 800000*KgBg*lg*10^(-3);// Mmf for air gap (in A)
disp(mmf_airgap,'Mmf for air gap (Ampere)=');
AT_f0 = SCR*mmf_airgap;// No load field mmf per pole
If = AT_f0 /T_field;// Field current at no load
disp(If,'Field current at no load (Ampere)=');
//in book answers are 1.9 meter, 0.345 meter, 150, 4240 ampere, 4250 ampere and 85 ampere respectively.  The answers vary due to round off error
