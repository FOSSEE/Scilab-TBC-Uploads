//calculation of wavelength of a photon from an electronic transition

clear;
clc;

printf("\t Example 7.4\n");

c=3*10^8;//speed of light in vacuum, m/s
h=6.63*10^-34;//planck's constant, J s
Rh=2.18*10^-18;//rydberg's constant, J
ni=5;//initial orbit
nf=2;//final orbit
deltaE=Rh*(1/ni^2-1/nf^2);
lambda=c*h/-deltaE;

printf("\t the wavelength of the photon is : %4.0f nm\n",lambda*10^9);

//End
