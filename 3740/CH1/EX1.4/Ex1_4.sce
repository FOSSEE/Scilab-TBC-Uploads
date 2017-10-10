//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 1.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
A=1e-5;//source area in m^2 
T=2e3;//temperature of the source in K
Epsilon=0.7//emissivity of the surface
Sigma=5.67e-8//value of Stefan's constant in SI Units

W=Epsilon*Sigma*A*T^4//total power radiated from the source in W
mprintf("\n Total power radiated from the source = %.2f W",W);
