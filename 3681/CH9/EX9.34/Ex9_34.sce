// Calculating the total commutator losses
clc;
disp('Example 9.34, Page No. = 9.92')
// Given Data
P = 800;// Power rating (in kW)
V = 400;// Voltage rating (in Volts)
rpm = 300;// r.p.m.
p = 10;// Number of poles
Dc = 1;// Commutator diameter (in meter).  Since 100 cm = 1 meter
u = 0.23;// Co-efficient of friction
Pb = 14.7;// Brush pressure (in kN per meter square)
J = 0.075;// Current density in brushes (in A per mm square)
Vcb = 2.2;// Total brush contact drop (in Volts)
// Calculation of the total commutator losses
n = rpm/60;// r.p.s.
Ia = P*10^(3)/V;//  Armature current (in Ampere)
Ib = 2*Ia/p;// Current per brush arm (in Ampere)
Ab = Ib/J;// Brush area per brush arm (in mm square)
AB = p*Ab*10^(-6);// Total brush area on the commutator (in meter square)
Vc = %pi*Dc*n;// Peripheral speed (in meter per second)
Wcf = u*Pb*10^(3)*AB*Vc;// Brush friction loss (in Watts)
Wcb = Ia*Vcb;// Brush contact loss (in Watts)
disp(Wcf+Wcb,'Total commutator losses (Watts)=');
//in book answer is 7230 Watts.  The answers vary due to round off error
