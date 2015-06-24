//computation of wavelength of a photon from energy

clear;
clc;

printf("\t Example 17.1\n");

E=498.7*10^3/(6.022*10^23);//energy in J/molecule
h=6.63*10^-34;//plancks constant, J s
v=E/h;//frequency of the photon, s^-1
lambda=3*10^8/v;//wavelength in m, since v*lambda=speed of light in vacuum

printf("\t the maximum wavelength of the photon which can dissociate an O2 molecule is : %4.0f nm\n",lambda*10^9);

//End
