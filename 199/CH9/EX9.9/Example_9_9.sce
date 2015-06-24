// Chapter9
// Page.No-423, Figure.No-9.33(a)
// Example_9_9
// Value of fout,fl,fc
// Given
clear;clc;
R1=12*10^3; // Resistance in ohm
V_plus=10 // Supply voltage in volt
V_minus=-10 // Supply voltage in volt
C1=0.01*10^-6; // Capacitance in farad
C2=10*10^-6; // Capacitance in farad
fout=1.2/(4*R1*C1);
printf("\n Free running frequency of VCO is = %.1f Hz \n",fout) // Result
V=V_plus-V_minus;
fl=(8*fout)/V;
printf("\n Lock range frequency of VCO is = %.1f Hz \n",fl) // Result
fc=sqrt(fl/(2*%pi*3.6*10^3*C2));
printf("\n Capture range frequency of VCO is = %.2f Hz \n",fc) // Result