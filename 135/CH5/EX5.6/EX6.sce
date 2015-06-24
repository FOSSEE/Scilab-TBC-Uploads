// Example 5.6: RF so that IE=+2 mA
clc, clear
IE=2e-3; // in amperes
VBE=0.7; // in volts
betaf=49;
// From Fig. 5.17
VCC=12; // in volts
RB=25e3; // in ohms
RC=2e3; // in ohms
I1=VBE/RB; // in amperes
IB=IE/(1+betaf); // in amperes
// KVL for the indicated loop gives
RF=(VCC-RC*(I1+(1+betaf)*IB)-VBE)/(I1+IB); // in ohms
RF=RF*1e-3; // in kilo-ohms
disp(RF,"RF so that IE=+2 mA (kΩ) =");