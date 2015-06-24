// Example 5.3: R1, R2, RC, RE
clc, clear
IC=1e-3; // in amperes
VCC=12; // in volts
betaf=100;
VBE=0.7; // in volts
// As suggested in the design constraints, allocate 1/3VCC to RC, another 1/3VCC to R2 leaving 1/3VCC for VCEQ.
VB=4; // in volts
VE=VB-VBE; // in volts
// Neglecting base current,
RE=VE/IC; // in ohms
// Select the current through R1R2 equal to 0.1IC
R1_plus_R2=VCC/(0.1*IC); // in ohms
R2=VB*R1_plus_R2/VCC; // in ohms
R1=R1_plus_R2-R2; // in ohms
RC=VCC/(3*IC); // in ohms
R1=R1*1e-3; // in kilo-ohms
R2=R2*1e-3; // in kilo-ohms
RC=RC*1e-3; // in kilo-ohms
RE=RE*1e-3; // in kilo-ohms
disp(R1,"R1 (kΩ) =");
disp(R2,"R2 (kΩ) =");
disp(RC,"RC (kΩ) =");
disp(RE,"RE (kΩ) =");