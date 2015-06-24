

//Example No 135.
//Page No 4.4.
//To find number of photons.
clc;clear;
h = 6.63*10^(-34);//Planck's constant.
c = 3*10^(8);//Velocity of ligth.
w = 5893*10^(-10);//wavelength.
Op = 60;//output power -[W].
E  =((h*c)/w);
printf("\nEnergy of photon in joules is %3.3e J",E);//Energy of photon in joules.
hv = (E/(1.6*10^(-19)));//Energy of photon in eV.
printf("\nEnergy of photon in eV is %.3f eV",hv);
Ps = ((Op)/(E));
Ps = ((60)/(E));// Number of photons emitted per second.
printf("\nThe number of photons emitted per second is %3.3e photons per second",Ps);
