//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 1.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given 
n1=1;//refractive index of air medium
n2=1.5;//refractive index of glass medium

thetaB=atand(n2/n1);//brewster angle for glass in degrees
mprintf("Brewster Angle = %.1f degrees",thetaB);
