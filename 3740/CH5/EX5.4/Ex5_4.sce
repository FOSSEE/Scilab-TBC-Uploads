//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 5.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1;//Refractive index of air medium
n2=3.6;//Refractive index of GaAs medium

R=((n2-n1)/(n2+n1))^2;//Reflectance at GaAs/air interface by Fresnel equation
mprintf("\n R = %.2f",R);
