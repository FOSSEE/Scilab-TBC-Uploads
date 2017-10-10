//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 12.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given 
rho=0.5;//responsitivity of Si PIN detector in A/W
Vb=20;//reverse bias voltage across the detector in V
//Case (i):
Rl=100;//load resistor in ohms
Pmax=Vb/(rho*Rl);//maximum value of optical power P falling on the photodetector in W
mprintf("\n For Rl=100 Ohm:");
mprintf("\n Pmax=%.1f mW",Pmax/1e-3)//Division by 10^(-3) to convert into mW
mprintf("\n Vr/P = %.1f mV/mW",rho*Rl);//Bias voltage per unit power in mV/mW
//Case (ii):
Rl=10e3;//load resistor in ohms
Pmax=Vb/(rho*Rl);//maximum value of optical power P falling on the photodetector in W
mprintf("\n For Rl=10 kOhm:");
mprintf("\n Pmax=%.1f mW",Pmax/1e-3)//Division by 10^(-3) to convert into mW
//Bias voltage per unit power in V/mW :
mprintf("\n Vr/P = %.1f V/mW",rho*Rl/1e3);//Division by 10^3 to convert into V/mW
