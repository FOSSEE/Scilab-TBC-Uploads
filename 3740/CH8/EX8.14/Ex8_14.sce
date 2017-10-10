//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.14
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
d1=200e-6;//Diameter of core in m
d2=250e-6;//Diameter of 'core+cladding' in m
//Let the Diameter of mixing rod be D
D=3*d2;
n=7;//Number of input and output fibers in the rod type coupler

//As B is a constant, it will be cancelled from the numerator & the denominator of expression of Lins
//So the simplified expression for Li becomes:
Lins=-10*log10((n*%pi*(d1^2)/4)/(%pi*(D^2)/4));//Insertion loss in dB
mprintf("\n Lins = %.1f dB",Lins);

