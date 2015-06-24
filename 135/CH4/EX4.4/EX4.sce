// Example 4.4: Region of operation
clc, clear
betaf=100; // Current gain
disp("Let us assume that the transistor is in saturation region.");
VBE_sat=0.8; // in volts
VCE_sat=0.2; // in volts
// From Fig. 4.21
VCC=10; // in volts
VBB=5; // in volts
RB=50e3; // in ohms
RC=2e3; // in ohms
// From the base loop
IB=(VBB-VBE_sat)/RB; // in amperes
IB=IB*1e3; // in miliamperes
IC_sat=(VCC-VCE_sat)/RC; // in amperes
IC_sat=IC_sat*1e3; // in miliamperes
IB_min=IC_sat/betaf; // in miliamperes
disp(IB_min,"Minimum IB required to saturate the transistor (mA) =");
disp(IB,"IB in the circuit (mA) =");
disp("Since IB in the circuit is calculated as 0.084 mA, so it is greater than IB,min. Thus the transistor is indeed in saturation mode.")