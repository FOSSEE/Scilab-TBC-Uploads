//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.10
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
P=100e-9;//Optical power in W
R=0.6;//Responsivity in A/W
Rl=1000;//Value of load resistor in Ohms
e=1.6e-19//Electronic charge in C
kB=1.38e-23;//Boltzmann constant in SI Units
T=300;//Missing data- Temperature in K
x=0.7;//Excess noise
Id=0;//Since the dark current is neglected in the example

Mop=(4*kB*T/(x*e*Rl*(R*P+Id)))^(1/(x+2));//Optimum value of internal gain corresponding to input optical power P
mprintf("Mop= %.1f",Mop);
