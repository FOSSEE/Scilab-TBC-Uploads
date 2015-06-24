
//Example No.2.3.
// Page No.60.
clc;clear;
w = 1.15*10^(-6);//wavelength -[m].
h = 6.626*10^(-34);
c = (3*10^(8));
hv = ((h*c)/(w));// Energy of one photon
printf("\n The energy of emitted photon is  %3.3e J",hv);
E = ((hv)/(1.6*10^(-19)));
printf("\n The energy of emitted photon is  %.3f eV",E);
E1 = 0,'eV';//Value of first energy level.
E2 = 1.4,'eV';//Value of second energy level.
E3 = (E2+E);//Energy value of 'E3'.
E3 = ((1.4)+E);
printf("\n The value of E3 energy level is %.3f eV",E3);
