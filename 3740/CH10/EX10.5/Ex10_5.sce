//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 10.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
V=4;//Value of Verdet constant in rad m^-1 T^-1
Mur=1;//Relative permeability of Silica
Mu0=4*%pi*1e-7;//Permeability of free space in SI Units
n=10;//Number of turns of the fiber coil
I=30;//Current flowing through the fiber in A

Thetar=Mu0*Mur*n*V*I;//Corresponding polarization rotation in radians
mprintf("\n Thetar = %.2f degrees",Thetar*180/%pi);//Multiplying by '180/%pi' to convert in degrees
