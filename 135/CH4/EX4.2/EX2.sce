// Example 4.2: Region of operation, All the node voltages and currents
clc, clear
betaf=100; // Current gain
disp("Let us assume that the transistor is in active region.");
VBE_active=0.7; // in volts
// From the equivalent circuit in Fig. 4.18(b)
VCC=10; // in volts
VBB=4; // in volts
RE=3.3e3; // in ohms
RC=5e3; // in ohms
VE=VBB-VBE_active; // in volts
// Writing KVL for base emitter loop and putting Ic= βF*Ib
IB=VE/((1+betaf)*RE); // in amperes
IB=IB*1e3; // in miliamperes
IC=betaf*IB; // in miliamperes
IE=IB+IC; // in miliamperes
VC=VCC-IC*RC*1e-3; // in volts
disp(VC,"VC (V) =");
disp(VE,"VE (V) =");
disp(VBB,"VB (V) =");
disp(IC,"IC (mA) =");
disp(IE,"IE (mA) =");
disp(IB,"IB (mA) =");
disp("Since the base is at 4 V and the collector is at 5.05 V, so the collector junction is reverse biased by 1.05 V. The transistor is indeed in forward active region as assumed.")