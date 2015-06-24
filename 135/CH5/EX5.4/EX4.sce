// Example 5.4: VCEQ, ICQ
clc, clear
VBE=0.7; // in volts
betaf=45;
// From Fig. 5.14
VEE=9; // in volts
RB=100e3; // in ohms
RC=1.2e3; // in ohms
// Applying KVL in the clockwise direction base emitter loop
IB=(VEE-VBE)/RB; // in amperes
IC=betaf*IB; // in amperes
// Writing KVL for the collector loop
VCE=VEE-IC*RC; // in volts
IC=IC*1e3; // in mili-amperes
disp(VCE,"VCEQ (V) =");
disp(IC,"ICQ (mA) =");