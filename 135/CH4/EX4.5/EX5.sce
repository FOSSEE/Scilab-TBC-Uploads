// Example 4.5: Value of RB so as to drive the transistor into saturation
clc, clear
bta=50; // Current gain
VBE_sat=0.8; // in volts
VCE_sat=0.2; // in volts
// From Fig. 4.22
VCC=10; // in volts
VBB=5; // in volts
RC=1e3; // in ohms
IC_sat=(VCC-VCE_sat)/RC; // in amperes
IB_min=IC_sat/bta; // Minimum base current in amperes to saturate the transistor
// Then base current can be taken as
IB=10*IB_min; // in amperes
RB=(VBB-VBE_sat)/IB; // in ohms
RB=RB*1e-3; // in kilo-ohms
disp(RB,"Value of RB so as to drive the transistor into saturation (kΩ) =");