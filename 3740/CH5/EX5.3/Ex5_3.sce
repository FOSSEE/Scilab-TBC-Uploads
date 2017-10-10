//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 5.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
h=6.6e-34;//Planck's constant in SI Units
T21=230e-6;//Spontaneous lifetime in s
lambda=1.06e-6;//Wavelength in m
n=1.82;//Refractive index of medium
DeltaNu=3e12;//Linewidth in Hz
k=1;//Given value of gain coefficient in m^(-1)

B21=(lambda^3)/(8*%pi*h*T21);
mprintf("\n B21 = %.1e m^3 W^-1 s^-3",B21);

//Let the inversion density (N2-g2/g1*N1) be Di
Di=k*lambda*DeltaNu/(B21*h*n);
mprintf("\n N2-g2/g1*N1 = %.1e m^(-3)",Di);//The answer provided in the textbook is wrong
