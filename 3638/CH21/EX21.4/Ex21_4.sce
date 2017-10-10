//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.4
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
va=5.96e3;//Velocity of the acoustic wave
Lb=2e-3;//Beat length in m

f=va/Lb;//Acoustic frequency in Hz for Theta=0 degrees
mprintf("\n f=%.2f MHz",f/1e6);//Division by 10^6 to convert into MHz
