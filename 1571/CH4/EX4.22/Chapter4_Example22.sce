clc
clear

//INPUT
t=38380;//temperature of the molecule in K
k=1.38*10^-16;//boltzman constant of one electron in ergs/K
e=1.6*10^-12;//charge of one electron volts

//CALCULATIOS
mk=1.5*k*t/e;//mean kinetic energy per atom in ev

//OUTPUT
mprintf('the mean kinetic energy of the molecule is %3.3f ev',mk) 
