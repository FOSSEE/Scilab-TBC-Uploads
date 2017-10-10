//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
//Let the focal length ratio of objective lens to eyepiece lens of a telescope be f2/f1 = 'f'
f=30;
Lambda=633e-9;//wavelength of the laser beam in m
D=3e-3;//Diameter of the plasma tube in m

Theta1=Lambda/D;//Divergence of the beam in radians
mprintf("\n Theta1 = %.1e rad",Theta1);

Theta2=Theta1/f;//Divergence of the beam after collimation in radians
mprintf("\n Theta2 = %.1e rad",Theta2); 

