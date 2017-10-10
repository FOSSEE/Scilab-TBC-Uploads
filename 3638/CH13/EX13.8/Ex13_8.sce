//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.8
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
P=100e-9;//Optical power in W
R=0.65;//Responsivity in A/W
Rl=1000;//Value of load resistor in Ohms
e=1.6e-19//Electronic charge in C
kB=1.38e-23;//Boltzmann constant in SI Units
Deltaf=100e6;//Detector bandwidth in Hz
T=300;//Missing data- Temperature in K
x=0.3;//Excess noise
Id=0;//Since the dark current is neglected in the example

Mop=(4*kB*T/(x*e*Rl*(R*P+Id)))^(1/(x+2));//Optimum value of internal gain corresponding to input optical power P
mprintf("Mop= %.1f",Mop);//The answers vary due to round off error
SNR=((Mop*R*P)^2)/(2*e*(Mop^(2+x))*(R*P+Id)*Deltaf+4*kB*T*Deltaf/Rl);//Corresponding Signal-to-noise ratio since x=0
mprintf("\n SNR = %f",SNR);//The answers vary due to round off error
mprintf("\n SNR in dB = %.2f dB",10*log10(SNR));//For conversion to dB
//The answers vary due to round off error

//Case (ii):
M=1;//Internal gain corresponding to input optical power P
SNR=((M*R*P)^2)/(2*e*(M^(2+x))*(R*P+Id)*Deltaf+4*kB*T*Deltaf/Rl);//Corresponding Signal-to-noise ratio since x=0
mprintf("\n For M=1:");
mprintf("\n SNR = %f",SNR);//The answers vary due to round off error
mprintf("\n SNR in dB = %.2f dB",10*log10(SNR));//For conversion to dB
//The answers vary due to round off error
