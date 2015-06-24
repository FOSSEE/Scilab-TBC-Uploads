// Example 5.5: VCEQ, ICQ
clc, clear
VBE=0.7; // in volts
betaf=120;
// From Fig. 5.15
VCC=20; // in volts
VEE=20; // in volts
R1=8.2e3; // in ohms
R2=2.2e3; // in ohms
RC=2.7e3; // in ohms
RE=1.8e3; // in ohms
// Using Thevnin's theorem to obtain equivalent circuit given in Fig. 5.16(b)
RB=R1*R2/(R1+R2); // in ohms
// From Fig. 5.16(a)
I=(VCC+VEE)/(R1+R2); // in amperes
VBB=I*R2-VEE; // in volts
// Writing KVL for the base emitter loop and putting Ic= βF*Ib gives
IB=(VEE+VBB-VBE)/(RB+(1+betaf)*RE); // in amperes
IC=betaf*IB; // in amperes
// KVL for the collector loop gives
VCE=VCC+VEE-IC*(RC+RE)-IB*RE; // in volts
IC=IC*1e3; // in mili-amperes
disp(VCE,"VCEQ (V) =");
disp(IC,"ICQ (mA) =");