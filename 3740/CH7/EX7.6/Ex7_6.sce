//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 7.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
e=1.6e-19;//Electronic charge in C
Epsilonr=11.7;//Relative permittivity of medium
Epsilon0=8.85e-12;//Permittivity of free space in SI Units
Nd=5e21;//Doping level of the diode in m^-3
V=100;//Reverse bias voltage in V

xn=sqrt(2*Epsilon0*Epsilonr*V/(e*Nd));//Depletion region thickness in m
mprintf("\n xn = %.1f um",xn/1e-6);//Dividing by10^(-6) to convert to um
