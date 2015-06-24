
//Example No.2.2.
// Page No.60.
clc;clear;
w = 632.8*10^(-9);//wavelength -[m].
h = 6.626*10^(-34);//Planck's constant.
c = (3*10^(8));//Velocity of light.
E = ((h*c)/(w));// Energy of one photon
printf("\nThe energy of emitted photon in joules is %3.3e J",E);
E = E/(1.6*10^(-19));
printf("\nThe energy of emitted photon in eV is %.2f eV",E);
