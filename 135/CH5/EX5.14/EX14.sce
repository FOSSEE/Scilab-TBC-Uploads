// Example 5.14: R1, RE
clc, clear
Io=10e-6; // in amperes
VCC=10; // in volts
bta=125;
VBE=0.7; // in volts
VT=25e-3; // in volts
// Let
I_ref=1e-3; // in amperes
R1=(VCC-VBE)/I_ref; // in ohms
R1=R1*1e-3; // in kilo-ohms
RE=VT*log(I_ref/Io)/((1+1/bta)*Io); // in ohms
RE=RE*1e-3; // in kilo-ohms
disp(R1,"R1 (kΩ) =");
disp(RE,"RE (kΩ) =");