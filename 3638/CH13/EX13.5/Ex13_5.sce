//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
R=0.65;//Responsivity of a Si detector in A/W
Id=1e-9;//Dark current in A
e=1.6e-19;//Electronic charge in C
kB=1.38e-23;//Boltzmann constant in SI Units
Rl=1000;//Assumed value of load resistor Rl in Ohms
T=300;//Assumed value of temperature in K

NEP=1/R*sqrt(2*e*Id+4*kB*T/Rl);//Noise equivalent power in W/(Hz)^(1/2)
mprintf("\n NEP = %.2e W/(Hz)^(1/2)",NEP);//The answers vary due to round off error
//If Id is the major noise term :
NEP=1/R*sqrt(2*e*Id);//Noise equivalent power in W/(Hz)^(1/2)
mprintf("\n If Id is the major noise term:");
mprintf("\n NEP = %.2e W/(Hz)^(1/2)",NEP);
