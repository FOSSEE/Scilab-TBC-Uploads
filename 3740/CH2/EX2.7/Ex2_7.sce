//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
V=-4;//reverse bias voltage applied to a Si diode in V
//The negative sign indicates reverse bias
Nd=4e21;//donor impurity level in m^(-3) 
V0=0.8;//potential barrier of the diode in V
Epsilon0=8.85e-12;//permittivity of free space in SI Units
Epsilonr=11.8;//relative permittivity of the diode
A=4e-7;//junction area of the diode in m^2
e=1.6e-19;//charge of electrons in C

Cj=A/2*(2*e*Epsilon0*Epsilonr*Nd/(V0-V))^(1/2);//junction capacitance of the diode in F
mprintf("Cj = %.1f pF",Cj/1e-12);//division by 10^(-12) to convert into pF
