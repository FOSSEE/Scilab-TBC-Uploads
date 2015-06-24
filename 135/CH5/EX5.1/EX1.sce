// Example 5.1: RB, RC
clc, clear
IB=40e-6; // in amperes
VCE=6; // in volts
VCC=12; // in volts
betaf=80;
VBE=0.7; // in volts
RB=(VCC-VBE)/IB; // in ohms
RC=(VCC-VCE)/(betaf*IB); // in ohms
RB=RB*1e-3; // in kilo-ohms
RC=RC*1e-3; // in kilo-ohms
disp(RB,"RB (kΩ) =");
disp(RC,"RC (kΩ) =");