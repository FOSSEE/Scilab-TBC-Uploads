//Example 5_33
clc;
clear;
close;
format('v',6);
//given data : 
ND=2*10^15;//cm^-3
Ep=1.5*10^5;//V/cm
epsilon=8.854*10^-14;//Permittivity
e=1.6*10^-19;//C/electron
//Width of depletion region
W=Ep*11.9*epsilon/e/ND;
VBR=W*Ep/2;//V
disp(VBR,"Breakdown Voltage(V) : ");
