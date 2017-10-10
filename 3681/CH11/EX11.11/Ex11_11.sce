// Calculating the length of air gap
clc;
disp('Example 11.11, Page No. = 11.35')
// Given Data
// 3 phase silient pole alternator
kVA = 500;// kVA rating
V = 3.3;// Voltage rating (in kV)
f = 50;// Frequency (in Hz)
rpm = 600;// R.p.m.
Tph = 180;// Turns per phase
Bav = 0.54;// Average flux density (in Wb per meter square)
SCR = 1.2;// Short circuit ratio
Kw = 0.955;// Winding factor
Kg = 1.15;// Gap constraction factor
Kf = 0.65;// Since field form factor is equal to the ratio of pole arc to pole pitch
// Calculation of the length of air gap
ns = rpm/60;// Synchronous speed (in r.p.s.)
p = 2*f/ns;// Number of poles
Iph = kVA*1000/(3^(1/2)*V*1000);// Armature diameter (in meter)
ATa = 2.7*Iph*Tph*Kw/p;// Armature mmf per pole (in A)
AT_f0 = SCR*ATa;// No load field mmf per pole
Bg = Bav/Kf;// Maximum flux density in air gap (in Wb per meter square)
lg = 0.8*AT_f0/(800000*Bg*Kg);// Length of air gap
//  Since mmf required for gap is 80% of no load field mmf
disp(lg*1000,'Length of air gap (mm)=');
//in book answer is 5.2 mm.  The answers vary due to round off error
