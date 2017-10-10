//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Ni=1e24;//Population Inversion in m^-3
Nu21=5e14;//Frequency of laser in Hz
V=1e-5;//Volume in m^3
h=6.63e-34;//Planck's constant in SI Units

//Assuming Nf<<Ni, we get
E=(1/2)*h*Nu21*Ni*V;//Total energy emitted in the pulse in J
mprintf("\n E= %.1f J",E)

