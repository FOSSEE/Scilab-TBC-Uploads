clc;
//Example 13.2
//page no 137
printf(" Example 13.2 page no 137\n\n");
//refer to part a of example 1
//appplying Hagen-Poiseuille equation
meu=6.72e-4//viscosity of water
v=0.13//velocity of water
D=2.067/12//diameter of pipe
P_l=32*meu*v/(D^2)
printf("\n pressure drop per unit length P_l=%f psf/ft",P_l);
