//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 4.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
d=0.2e-3;//Chip diameter of LED in m
D=1;//Distance between LED and the viewer in m
lambda=550e-9;//Wavelength emitted in m
eta=0.001;//Quantum efficiency of LED
V=2;//Operating voltage in V
I=50e-3;//Operating current in A
h=6.626e-34;//Planck's constant in SI Units
c=3e8;//Speed of light in air in m/s
e=1.6e-19;//Electronic charge in C

Theta=2*atand(d/(2*D));//Angle subtended by the emitting area in degrees
mprintf("\n Theta = %.5f degrees",Theta);
//As Theta is less than 0.01667, LED acts as a point source

//Let the photon emission rate be denoted by 'Rate'
Rate=I/e;//Number of photons emitted per second

W=(h*c/lambda)*eta*Rate;//Total radiant power in W
mprintf("\n W = %.2e Watts",W);

