//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 2.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
k=1.38e-23;//Boltzmann's constant in SI Units
T=290;//room temperature in K
e=1.6e-19;//charge of electrons in C
Nd=1e22;//donor impurity level in m(-3)
Na=1e24;//acceptor impurity level in m(-3)
ni=2.4e19;//intrinsic electron concentration in m^(-3)

V0=k*T/e*log(Na*Nd/(ni^2));//contact potential difference in V
mprintf("V0 = %.2f V",V0);
