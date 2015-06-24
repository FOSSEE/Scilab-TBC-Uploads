// Example 9.6: Input impedance, Output impedance, Voltage gain
clc, clear
gm=2.5; // in mili-Siemens
r_pi=1.3; // in kilo-ohms
bta=200;
// From Fig. 9.14(c)
Ri2=15*4.7*1.3/(15*4.7+15*1.3+4.7*1.3); // Input impedance of second stage in kilo-ohms
RD_dash=1.8*Ri2/(1.8+Ri2); // Effective load for the first stage in kilo-ohms
AV1=-gm*RD_dash; // Voltage gain of the loaded 1st stage
AV2=-bta*2.7/r_pi; // Voltage gain of the 2nd stage
AV=AV1*AV2; // Overall voltage gain
disp(10,"Input impedance (MΩ) =");
disp(2.7,"Output impedance (kΩ) =");
disp(AV,"Voltage gain =");