//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 8.13
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
//Let the quantity 'D/2a' be 'D'
D=0.1;//Dimensionless Ratio of lateral displacement to fiber core radius

Tlat=2/%pi*(acos(D) - D*sqrt(1 - D^2));//Transmission losses from misalignment
mprintf("\n Tlat = %.3f",Tlat);//The answers vary due to round off error

L=-10*log10(Tlat);//Corresponding Transmission loss in dB
mprintf("\n L = %.2f dB",L);
