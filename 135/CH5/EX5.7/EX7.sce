// Example 5.7: RCQ, RE
clc, clear
VCEQ=3; // in volts
VBE=0.7; // in volts
betaf=200;
// From Fig. 5.18(a)
VCC=6; // in volts
VEE=6; // in volts
R1=90e3; // in ohms
R2=90e3; // in ohms
// Using Thevnin's theorem to obtain equivalent circuit given in Fig. 5.18(b)
RB=R1*R2/(R1+R2); // in ohms
VBB=R2*(VCC+VEE)/(R1+R2); // in volts
// In the output loop
x=VEE-VCEQ; // x = (IC+IB)RE in volts
// Applying KVL in the base emitter loop
IB=(VEE-VBE-x)/RB; // in amperes
IC=betaf*IB; // in amperes
// In the output loop
RC=VCC/IC; // in ohms
RE=x/(IC+IB); // in ohms
RC=RC*1e-3; // in kilo-ohms
RE=RE*1e-3; // in kilo-ohms
disp(RC,"RC (kΩ) =");
disp(RE,"RE (kΩ) =");