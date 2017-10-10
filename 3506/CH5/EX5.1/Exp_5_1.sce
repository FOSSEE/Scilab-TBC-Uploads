//Optical Fiber communication by A selvarajan
//example 5.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 

optical_power=10*10^-6//optical power in W
R=0.5//Responsivity in A/W
Is=optical_power*R//shot noise current in A
Id=2*10^-9//dark current in A
Rl=1e6//Load resistance in ohm
B=1e6//bandwidth in Hz
T=300//Temperature in K
K=1.38*10^-20//Boltzman constant in m2 g s-2 K-1
q=1.609*10^-19//charge of a electron in Coulombs
Ith=4*K*T*B/Rl//Mean Square Thermal noise current in A
SNR=(Is^2)/(2*q*(Is+Id)+Ith)//Signal to noise ratio
mprintf("Thermal noise current=%f*10^-18A",Ith*10^18)
mprintf("\nShot noise current=%f*10^-6A",Is*10^6)
mprintf("\nSignal to noise ratio=%fdB",10*log10(SNR))//The answers vary due to round off error

