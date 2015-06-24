// Chapter4
// Page.No-153, Figure.No-4.32
// Example_4_14_b
// Output common-mode voltage
// Given
clear;clc;
R1=1*10^3;R2=1*10^3;Rf=10*10^3;R3=10*10^3;
vd=5*10^-3; // Differential voltage
vcm=2*10^-3; // Common-mode voltage
Ad=Rf/R1; // Closed-loop differential gain
CMRRdb=90
CMRR=10^(90/20); // Using CMRRdb=20*log10(CMRR), to convert the CMRR(dB) value into its equuivalent numerical value
printf("\n CMRR is = %.2f \n",CMRR) // Result
vocm=(Ad*vcm)/CMRR; // Output common-mode voltage
printf("\n Output common-mode voltage is = %.8f V \n",vocm) // Result