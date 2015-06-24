//calculation of wavelength of a particle

clear;
clc;

printf("\t Example 7.5\n");

//(a)
h=6.63*10^-34;//planck's constant, J s
m=0.06;//mass, kg
u=63;//speed, m/s
lambda=h/(m*u);//wavelength, m

printf("\t the wavelength of the tennis ball is : %4.1f *10^-34 m\n",lambda*10^34);

//(b)
m=9.1094*10^-31;//mass, kg
u=68;//speed, m/s
lambda=h/(m*u);//wavelength, m

printf("\t the wavelength of the electron is : %4.1f *10^-5 m\n",lambda*10^5);

//End
