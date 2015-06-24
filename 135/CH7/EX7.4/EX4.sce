// Example 7.4: VDSQ, IDSQ, VD, VS
clc, clear
IDSS=6e-3; // in amperes
VP=-6; // in volts
// From Fig. 7.31
VDD=12; // in volts
RD=2.2e3; // in ohms
RS=1.6e3; // in ohms
// Plotting transfer characteristics
VGS=[0:-0.01:VP]; // Gate source voltage in volts
// Using Shockley's equation
ID=IDSS*(1-VGS/VP)^2; // Drain current in amperes
ID=ID*1e3; // Drain current in mili-amperes
plot(VGS,ID);
xtitle("Transfer Characteristics","VGS (V)","ID (mA)");
// Plotting bias line
// From gate source circuit
ID=-VGS/RS; // Source current in amperes
ID=ID*1e3; // Source current in mili-amperes
plot(VGS,ID,"RED");
// Intersection of transfer characteristics with the bias curve
// Putting VGS = -ID*RS in Shockley's equation and solving, we get ID^2*RS^2 + (2*RS*VP - VP^2/IDSS)*ID + VP^2
// Solving the equation
p_eq = poly([VP^2 (2*RS*VP-VP^2/IDSS) RS^2],"x","coeff");
p_roots= roots(p_eq);
IDQ=p_roots(1); // in amperes
// Writing the KVL for the output loop
VDSQ=VDD-IDQ*(RD+RS); // in volts
VS=IDQ*RS; // in volts
VD=VDSQ+VS; // in volts
IDQ=IDQ*1e3; // in mili-amperes
disp(VDSQ,"VDSQ (V) =");
disp(IDQ,"IDQ (mA) =");
disp(VD,"VD (V) =");
disp(VS,"VS (V) =");