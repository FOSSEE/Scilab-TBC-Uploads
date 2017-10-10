//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
d=5e-6;//Thickness of Si layer in m
D=3.4e-3;//Minority carrier diffusion coefficient in m^2 s^-1

Tdiff=(d^2)/(2*D);//Diffusion time of carriers in s
mprintf("\n Tdiff = %.1e s",Tdiff);
