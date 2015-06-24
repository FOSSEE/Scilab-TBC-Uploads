// Example 4.3: Region of operation, Node currents and voltages
clc, clear
betaf=100; // Current gain
disp("Let us assume that the transistor is in active region.");
VBE_active=0.7; // in volts
// From Fig. 4.19
VCC=10; // in volts
VBB=5; // in volts
RB=100e3; // in ohms
RE=2e3; // in ohms
RC=2e3; // in ohms
// Writing KVL to the base circuit and putting Ic= βF*Ib
IB=(VBB-VBE_active)/(RB+(1+betaf)*RE); // in amperes
IB=IB*1e3; // in miliamperes
IC=betaf*IB; // in miliamperes
IE=IB+IC; // in miliamperes
VB=VBB-IB*RB*1e-3; // in volts
VE=IE*RE*1e-3; // in volts
VC=VCC-IC*RC*1e-3; // in volts
disp(VC,"VC (V) =");
disp(VE,"VE (V) =");
disp(VB,"VB (V) =");
disp(IC,"IC (mA) =");
disp(IE,"IE (mA) =");
disp(IB,"IB (mA) =");
disp("Since base voltage VB is 3.6 V and collector is at 7.2 V, so collector-base junction is reverse biased by 3.6 V. Thus our assumption that the transistor is in active region is valid.")