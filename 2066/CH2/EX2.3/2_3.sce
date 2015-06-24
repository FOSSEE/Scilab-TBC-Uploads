clc
clear
//Initialization of variables
pb=28.5 //in mercury
d=13.6 //g/cc
gam=62.4
pobs=-4 //psi
//calculations
patm=pb/12 *gam*d/144
pabs=patm+pobs
P=pabs*144/gam
//results
printf("Absolute pressure = %.1f psia",pabs)
printf("\n Absolute pressure in feet of water = %.1f ft of water",P)
