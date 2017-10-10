// Calculating the suitable number of slots and conductors per slot
clc;
disp('Example 11.4, Page No. = 11.28')
// Given Data
// 3 phase star connected alterator (Single layer winding)
rpm = 300;// R.p.m.
E = 3300;// Voltage rating (in volts)
f = 50;// Frequency (in Hz)
D = 2.3;// Diameter of core (in meter)
L = 0.35;// Length of core (in meter)
Bm = 0.9;// Maximum flux density in the air gap (in Wb per meter square)
// Calculation of the suitable number of slots and conductors per slot
ns = rpm/60;// Synchronous speed (r.p.s)
p = 2*f/ns;// Number of poles
Bav = 2/%pi*Bm;// Average flux density in the air gap (in Wb per meter square)
Flux_pole = Bav*%pi*D*L/p;// Flux per pole (in Wb)
Eph = E/3^(1/2);// Voltage per phase (in volts)
ys = 40;// Slot pitch (in mm).  The slot pitch should be nearly 40 mm for 3.3 kV machines
Kw = 0.955;// Taking winding factor
Tph = int(Eph/(4.44*f*Flux_pole*Kw));// Turns per phase
q = int(%pi*D/(3*p*ys*10^(-3)));// Slots per pole per phase
S = 3*p*q;// Total number of stator slots
Tph6 = 6*Tph;// Total number of stator conductors
Zs = int(Tph6/S);// Conductors per slot
disp(Zs*S,'Total stator conductors used =');
disp(Zs*S/6,'Turns per phase used=');
