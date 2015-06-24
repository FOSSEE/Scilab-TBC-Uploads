// Example 7.7: IDQ, VDSQ, VGSQ
clc, clear
ID=5e-3; // in amperes
VGS=6; // in volts
VT=3; // in volts
// From Fig. 7.39(a)
VDD=24; // in volts
R1=10; // in mega-ohms
R2=6.8; // in mega-ohms
RD=2.2e3; // in ohms
RS=0.75e3; // in ohms
// Applying Thevnin's theorem to obtain simplified circuit in Fig. 7.39(b)
VGG=VDD*R2/(R1+R2); // in volts
// Plotting transfer characteristics
k=ID/(VGS-VT)^2; // in amperes per volt square
VGS=[3:0.01:VGG]; // Gate source voltage in volts
ID=k*(VGS-VT)^2; // Drain current in amperes ............ (i)
ID=ID*1e3; // Drain current in mili-amperes
plot(VGS,ID);
xtitle("Transfer Characteristics","VGS (V)","ID (mA)");
// Plotting bias line
VGS=[0:0.01:VGG]; // Gate source voltage in volts
// Writing KVL for the gate-source loop
ID=(VGG-VGS)/RS; // Source current in amperes
ID=ID*1e3; // Source current in mili-amperes
plot(VGS,ID,"RED");
// Intersection of transfer curve with the bias curve
// Putting VGS = VGG-ID*RD in equation (i) and solving, we get ID^2*RS^2 + (2*RS*VT - 2*VGG*RS - 1/k)*ID + (VGG-VT)^2
// Solving the equation
p_eq = poly([(VGG-VT)^2 (2*RS*VT-2*VGG*RS-1/k) RS^2],"x","coeff");
p_roots= roots(p_eq);
IDQ=p_roots(1); // in amperes
VGSQ=VGG-IDQ*RS; // in volts
// From the output circuit
VDSQ=VDD-IDQ*(RD+RS); // in volts
IDQ=IDQ*1e3; // in mili-amperes
disp(IDQ,"IDQ (mA) =");
disp(VDSQ,"VDSQ (V) =");
disp(VGSQ,"VGSQ (V) =");