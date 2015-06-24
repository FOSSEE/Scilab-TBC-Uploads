// Example 4.8: :Labelled voltages and currents
clc, clear
betaf=100; // Current gain
disp("Let us assume that the transistor is in active region.");
VBE_active=-0.7; // in volts
// From Fig. 4.25(a)
VCC=-10; // in volts
VEE=10; // in volts
RE=6.8e3; // in ohms
RC=10e3; // in ohms
R1=300e3; // in ohms
R2=180e3; // in ohms
// Applying Thevnin's theorem at point B
R_th=R1*R2/(R1+R2); // in ohms
V_th=VEE-(R2*(VEE-VCC)/(R1+R2)); // in volts
// From the Thevnin equivalent circuit in Fig. 4.25(b)
// Writing KVL for base-emitter circuit and putting Ic= βF*Ib
IB=(VEE-V_th+VBE_active)/(R_th+(1+betaf)*RE); // in amperes
IB=IB*1e3; // in miliamperes
IC=betaf*IB; // in miliamperes
IE=IB+IC; // in miliamperes
VC=VCC+IC*RC*1e-3; // in volts
VE=VEE-IE*RE*1e-3; // in volts
VB=V_th+IB*R_th*1e-3; // in volts
I1=(VEE-VB)/R2; // in amperes
I1=I1*1e3; // in miliamperes
I2=I1+IB; // in miliamperes
disp(IC,"IC (mA) =");
disp(IE,"IE (mA) =");
disp(IB,"IB (mA) =");
disp(I1,"I1 (mA) =");
disp(I2,"I2 (mA) =");
disp(VC,"VC (V) =");
disp(VE,"VE (V) =");
disp(VB,"VB (V) =");