//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.10
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given - Case (i)
Lambda0=850e-9;//Wavelength in m
L=1e3;//Length of the silica based fiber in m
DeltaLambda0=50e-9;//Linewidth of the fiber in m
c=3e8;//Speed of light in m/s
//Let the term '((d^2)n)/(dLambda0)^2' in m^-2 be denoted by dsquare
dsquare=3e10;

DeltaT=L*Lambda0*dsquare*DeltaLambda0/c;//Material dispersion for laser in s
mprintf("\n DeltaT for laser = %.1e s",DeltaT);//The answers vary due to round off error

//given - Case (ii)
Lambda0=1550e-9;//Wavelength in m
L=1e3;//Length of the silica based fiber in m
DeltaLambda0=3e-9;//Linewidth of the fiber in m
c=3e8;//Speed of light in m/s
//Let the term '((d^2)n)/(dLambda0)^2' in m^-2 be denoted by dsquare
dsquare=4.24e9;

DeltaT=L*Lambda0*dsquare*DeltaLambda0/c;//Material dispersion for LED in s
mprintf("\n DeltaT for LED = %.1e s",DeltaT);
