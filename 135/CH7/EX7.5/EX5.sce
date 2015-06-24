// Example 7.5: Operating point
clc, clear
VP=-5; // in volts
IDSS=12e-3; // in amperes
// From Fig. 7.34(a)
VDD=18; // in volts
R1=400; // in kilo-ohms
R2=90; // in kilo-ohms
RD=2e3; // in ohms
RS=2e3; // in ohms
// Applying Thevnin's theorem to obtain simplified circuit in Fig. 7.34(b)
VGG=VDD*R2/(R1+R2); // in volts
// Plotting transfer characteristics
VGS=[VGG:-0.01:VP]; // Gate source voltage in volts
// Using Shockley's equation
ID=IDSS*(1-VGS/VP)^2; // Drain current in amperes
ID=ID*1e3; // Drain current in mili-amperes
plot2d(VGS,ID,rect=[-5,0,3,12]);
xtitle("Transfer Characteristics","VGS (V)","ID (mA)");
// Plotting bias line
// From the KVL for the gate-loop
ID=(-VGS+VGG)/RS; // Source current in amperes
ID=ID*1e3; // Source current in mili-amperes
plot(VGS,ID,"RED");
// Intersection of transfer curve with the bias curve
// Putting VGS = VGG-ID*RS in Shockley's equation and solving, we get
// ID^2*RS^2 + (2*RS*VP - 2*VGG*RS - VP^2/IDSS)*ID + (VGG-VP)^2
// Solving the equation
p_eq = poly([(VGG-VP)^2 (2*RS*VP-2*VGG*RS-VP^2/IDSS) RS^2],"x","coeff");
p_roots= roots(p_eq);
IDQ=p_roots(1); // in amperes
// Writing the KVL for the drain source loop
VDSQ=VDD-IDQ*(RD+RS); // in volts
IDQ=IDQ*1e3; // in mili-amperes
disp(VDSQ,"VDSQ (V) =");
disp(IDQ,"IDQ (mA) =");