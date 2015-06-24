//Page Number: 9.22
//Example 9.14
clc;
//Given
delf=75D+3; //Hz
W=15D+3; //Hz
Sx=1/2;
//As SNRO=3(delf/W)^2*Sx*g
// Assume g=1
g=1;

SNRO=3*(delf/W)^2*Sx*g;
SNdB=10*log10(SNRO);
disp('dB',SNdB,'Output SNR:');

//Hence it is SNdB times better
