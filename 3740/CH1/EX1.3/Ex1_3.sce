//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 1.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given - Case(1)
D=0.1;//diameter of an objective lens in m
d=500;//distance of the lens from the sources in m
lambda=550e-9;//wavelength of the light used in m

Smin=d*lambda/D;//minimum separation of two point sources that can just be resolved in m
mprintf("Smin = %.2f mm",Smin/1e-3);//division by 10^(-3) to convert into mm


//given - Case(2)
p=1;//order of the fringe
N=600;//number of lines used per mm
lambda=550e-9//wavelength of the light used in m
w=40//width of the diffraction grating in mm

DeltaLambda=lambda/(p*N*w);//minimum wavelength difference that can be resolved in m 
mprintf("\n DeltaLambda = %.3f nm",DeltaLambda/1e-9);//division by 10^(-9) to convert in nm 
