//Example 10// Ch 3
clc;
clear;
close;
// given data
l=200*10^-10;// wavelength in angstrom
h=4.15*10^-15;//planks constant
c=3*10^8;//speed of light
me=9.11*10^-31;
BE=13.6;//binding energy in eV
PE=(h*c)/l;//in eV
printf("photon enegy %f eV",PE)
KE = PE-BE;//in eV
printf("kinetic energy of photoelectron %f ev",KE)
ve=sqrt((2*KE*1.6*10^-19)/me);
printf("velosity of photoelectron %e m/s",ve)


