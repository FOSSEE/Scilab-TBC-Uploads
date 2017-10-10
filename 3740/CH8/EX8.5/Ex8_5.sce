//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=1.48;//Dimensionless refractive index of fiber core
n2=1.46;//Dimensionless refractive index of fiber cladding
n0=1;//Dimensionless refractive index of air

Thetac=asind(n2/n1);//critical angle in degrees
mprintf("\n Thetac = %.1f degrees",Thetac);//The answers vary due to round off error

Delta=(n1-n2)/n1;
mprintf("\n Delta = %.4f",Delta);//The answers vary due to round off error

NA=n1*sqrt(2*Delta);//Dimensionless Numerical aperture of fiber
mprintf("\n NA = %.3f",NA);//The answers vary due to round off error

AlphaMax=asind(NA);//Fiber acceptance angle in degrees
mprintf("\n AlphaMax = %.1f degrees",AlphaMax);//The answers vary due to round off error
