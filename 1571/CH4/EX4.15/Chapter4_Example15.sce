clc
clear

//INPUT
n=2.76*10^19;//no.of molecules per cc
d=3.36*10^(-8);//diameter of the helium molecule in cm

//CALCULATIONS
mf=1/((2^(0.5))*3.14*(d^2)*n)

//OUTPUT
mprintf('the mean free path of the hydrogen molecue is %3.8f cm',mf)
