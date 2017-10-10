//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
Rl=500;//Value of load resistor Rl in Ohms
kB=1.38e-23;//Boltzmann constant in SI Units
Deltaf=100e6;//Bandwidth of detection in Hz
T=300;//Temperature in K

//Let the root mean square shot noise current be Ins
Ins=sqrt(4*kB*T*Deltaf/Rl);//As the root mean square shot noise current is the square root of mean square shot noise current in A
mprintf("\n The rms shot noise current = %.2e A",Ins);
mprintf("\n The mean square shot noise current = %.2e A^2",Ins^2)//The answers vary due to round off error
