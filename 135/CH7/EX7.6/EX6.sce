// Example 7.6: VDSQ, IDQ
clc, clear
ID=6e-3; // in amperes
VGS=8; // in volts
VT=3; // in volts
// From Fig. 7.37(a)
VDD=12; // in volts
RD=2e3; // in ohms
// Plotting transfer curve
k=ID/(VGS-VT)^2; // in amperes per volt square
VGS=[3:0.01:VDD]; // Gate source voltage in volts
ID=k*(VGS-VT)^2; // Drain current in amperes ............ (i)
ID=ID*1e3; // Drain current in mili-amperes
plot(VGS,ID);
xtitle("Transfer Curve","VGS (V)","ID (mA)");
// Plotting bias line
// From the simplified dc equivalent circuit in Fig. 7.37(b)
VGS=[0:0.01:VDD]; // Gate source voltage in volts
ID=(VDD-VGS)/RD; // Source current in amperes
ID=ID*1e3; // Source current in mili-amperes
plot(VGS,ID,"RED");
// Intersection of transfer curve with the bias curve
// Putting VGS = VDD-ID*RD in equation (i) and solving, we get ID^2*RD^2 + (2*RD*VT - 2*VDD*RD - 1/k)*ID + (VDD-VT)^2
// Solving the equation
p_eq = poly([(VDD-VT)^2 (2*RD*VT-2*VDD*RD-1/k) RD^2],"x","coeff");
p_roots= roots(p_eq);
IDQ=p_roots(1); // in amperes
VGSQ=VDD-IDQ*RD; // in volts
IDQ=IDQ*1e3; // in mili-amperes
disp(VGSQ,"VDSQ (V) =");
disp(IDQ,"IDQ (mA) =");