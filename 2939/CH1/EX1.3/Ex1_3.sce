//Ex1_3

clc;
//Given:

energy=10; //in electron volts
m=9.1*10^-31;// mass of electron in kg
h=6.626*10^-34;// planck's constant J.s
c=3*10^8;// speed of light in m/s

//solution (a):
energy1=energy*1.6*10^-19;// energy in J
p=(2*m*energy1)^0.5;// momentum
wavelength=h/p*(10)^10;

printf("The wavelength in Angstroms is = %f ",wavelength)


//solution (b):
wavelength1=h*c/energy1*(10)^10;//photon wavelength

printf("\n The photon wavelength in Angstroms is = %f ",wavelength1)

