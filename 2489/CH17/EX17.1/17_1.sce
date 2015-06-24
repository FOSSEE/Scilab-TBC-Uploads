clc
//Intitalisation of variables
clear
a= 265 //cm^2
mw= 256 //gm
N= 6.02*10^23 //molecules
m= 5.19*10^-5 //gms
//CALCULATIONS
asm= (a*mw)/(N*m)
//RESULTS
printf ('Area per single molecule = %.1e cm^2',asm)
