
//Example No.2.1.
// Page No.59.
clc;clear;
p = 5*10^(-3);// output power -[W].
w = 632.8*10^(-9);//wavelength -[m].
h = 6.626*10^(-34);//Planck's constant.
c = (3*10^(8));//Velocity of light.
hv = ((h*c)/(w));// Energy of one photon
printf("\nThe energy of one photon in joules is %3.3e J", hv);
hv = hv/(1.6*10^(-19));
printf("\nThe energy of one photon in eV is %.2f eV",hv);
Np = (p/(3.14*10^(-19)));//Number of photons emitted
printf("\nThe number of photons emitted per second by He-Ne laser are %3.3e photons per second",Np);

