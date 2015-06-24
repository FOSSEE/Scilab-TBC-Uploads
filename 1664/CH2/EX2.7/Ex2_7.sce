
//Example No.2.7.
// Page No.61.
clc;clear;
T = 300;//Temperature -[K]
K = 1.38*10^(-23);//Boltzman's constant
w = 600*10^(-9);//wavelength-[m]
h = 6.626*10^(-34);
v = (3*10^(8));//velocity.
S = (1/((exp((h*v)/(w*K*T)))-1));//Se=stimulated emission & SPe= spontaneous emission
printf("\nThe ratio between stimulated emission and spontaneous emission is %3.3e.\nTherefore, the stimulated emission is not possible in this condition.",S);
