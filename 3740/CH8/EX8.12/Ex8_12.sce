//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.12
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n0=1;//Dimensionless refractive index of air

Rf=((n1-n0)/(n1+n0))^2;//Fraction of light reflected at each fiber end
mprintf("\n Rf = %.4f",Rf);

Tf=(1 - Rf)^2;
mprintf("\n Tf = %.3f",Tf);

L=-10*log10(Tf);//Corresponding total loss in dB
mprintf("\n L = %.2f dB",L);
