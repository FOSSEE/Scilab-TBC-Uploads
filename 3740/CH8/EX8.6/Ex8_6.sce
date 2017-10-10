//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n2=1.46;//Dimensionless refractive index of fiber cladding
L=1e3;//Length of fiber in m
c=3e8;//Speed of light in vacuum in m/s

DeltaTSI=L/c*(n1/n2)*(n1-n2);//Intermodal dispersion in s
mprintf("\n DeltaTSI = %.2f ns",DeltaTSI/1e-9);//Dividing by 10^(-9) to convert to ns
//The answers vary due to round off error
