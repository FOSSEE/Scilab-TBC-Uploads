//calculation of energy of a photon

clear;
clc;

printf("\t Example 7.3\n");

c=3*10^8;//speed of light in vacuum, m/s
h=6.63*10^-34;//planck's constant, J s
//(a)
lambda=5*10^-5;//wavelength, m
E=h*c/lambda;//energy, J

printf("\t (a) the energy of the photon is : %4.2f *10^-21 J\n",E*10^21);

//(b)
lambda=5*10^-11;//wavelength, m
E=h*c/lambda;//energy, J

printf("\t (b) the energy of the photon is : %4.2f *10^-15 J\n",E*10^15);

//End
