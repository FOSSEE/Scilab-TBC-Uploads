// Example 5.8: VCEQ
clc, clear
VBE=-0.7; // in volts
betaf=120;
// From Fig. 5.19(a)
VCC=18; // in volts
R1=47e3; // in ohms
R2=10e3; // in ohms
RC=2.4e3; // in ohms
RE=1.1e3; // in ohms
// Using Thevnin's theorem to obtain equivalent circuit given in Fig. 5.19(b)
VBB=R2*VCC/(R1+R2); // in volts
RB=R1*R2/(R1+R2); // in ohms
// Applying KVL in the base emitter loop and putting Ic= βF*Ib
IB=(VBB+VBE)/(RB+(1+betaf)*RE); // in amperes
IC=betaf*IB; // in amperes
// In the collector emitter loop
VCE=-VCC+IC*(RC+RE)+IB*RE; // in volts
disp(VCE,"VCEQ (V) =");