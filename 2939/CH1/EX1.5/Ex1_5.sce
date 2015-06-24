//Ex1_5

clc;

//Given:

m=1.66*10^-27;// 1u=1.66*10^-27 kg
h=6.6262*10^-34;//planck's constant in J.s
energy1=120;// in Mev for oxygen
energy2=140;// in MeV for nitrogen

//solution(a):

p=(2*m*16*energy1*(1.6022*10^-13))^0.5;
wavelength1=h/p*(10)^15;//wavelength in 10^-5 Angstroms

printf("\n The wavelength in 10^-5 Angstroms is = %f ",wavelength1)

//solution (b):

p=(2*m*14*energy2*(1.6022*10^-13))^0.5;
wavelength2=h/p*(10)^15;//wavelength in 10^-5 Angstroms

printf("\n The wavelength in 10^-5 Angstroms is = %f ",wavelength2)

// 1 Angstrom = 10^-10 m
