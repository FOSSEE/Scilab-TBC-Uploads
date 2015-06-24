// Example 9.3: Voltage gain
clc, clear
bta=150;
VA=130; // in volts
IC=100; // in micro-amperes
Rs=50; // in kilo-ohms
RC=250; // in kilo-ohms
VT=25; // Voltage equivalent to temperatue at room temperature in mili-volts
gm=IC/VT; // in mili-Siemens
ro=VA/IC; // in Megaohms
ro=ro*1e3; // in kilo-ohms
r_pi=bta/gm; // in kilo-ohms
// From ac equivalent circuit of the first CC stage using hybrid-π model in Fig. 9.13(a)
// Voltage gain of CC stage
AV1=(1+bta)*ro/(Rs+r_pi+(1+bta)*ro); // Voltage gain of first stage
Ro1=(Rs+r_pi)/(1+bta); // in kilo-ohms
Ro1_dash=ro*Ro1/(ro+Ro1); // in kilo-ohms
// From the ac equivalent circuit of second stage in Fig. 9.13(b)
RL=ro*RC/(ro+RC); // Effective load for second stage in kilo-ohms
AV2=-bta*RL/(Ro1_dash+r_pi); // Voltage gain of second stage
AV=AV1*AV2; // Overall voltage gain
disp(AV,"Voltage gain =");