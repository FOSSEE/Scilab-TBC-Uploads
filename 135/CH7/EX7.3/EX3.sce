// Example 7.3: IDQ, VDSQ
clc, clear
IDSS=12; // in mili-amperes
VP=-4; // in volts
// From Fig. 7.28
VDD=12; // in volts
RD=1.2; // in kilo-ohms
// Since IG=0
VGS=-1.5; // in volts
// Using Shockley's equation
ID=IDSS*(1-VGS/VP)^2; // Drain current in mili-amperes
VDS=VDD-ID*RD; // in volts
disp(ID,"IDQ (mA) =");
disp(VDS,"VDSQ (V) =");