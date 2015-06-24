// Example 5.2: VCEQ, ICQ
clc, clear
VBE=0.7; // in volts
betaf=50;
// From Fig. 5.11(a)
VCC=18; // in volts
R1=82e3; // in ohms
R2=22e3; // in ohms
RC=5.6e3; // in ohms
RE=1.2e3; // in ohms
// Using Thevnin's theorem to obtain equivalent circuit given in Fig. 5.11(b)
VBB=R2*VCC/(R1+R2); // in volts
RB=R1*R2/(R1+R2); // in ohms
IB=(VBB-VBE)/(RB+(1+betaf)*RE); // in amperes
IC=betaf*IB; // in amperes
VCE=VCC-IC*(RC+RE)-IB*RE; // in volts
IC=IC*1e3; // in mili-amperes
disp(VCE,"VCEQ (V) =");
disp(IC,"ICQ (mA) =");