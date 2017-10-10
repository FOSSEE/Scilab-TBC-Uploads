//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 10.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
N=1000;//Number of turns of fiber
r=0.1;//Radius of fiber in m
Omega=15*%pi/(180*3600);//Multiplying by %pi/180 & Dividing by 3600 to convert the earth's rotation rate unit into rad/s 
Lambda0=1e-6;//Wavelength of beam in m
c=3e8;//Speed of light in m/s

A=%pi*(r^2);//Area of the fiber ring in m^2
PhiS=8*%pi*Omega*A*N/(Lambda0*c);//Corresponding Phase shift in the beam in radians
mprintf("\n PhiS = %.1e rad",PhiS);
