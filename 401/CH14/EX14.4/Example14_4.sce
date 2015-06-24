//Example 14.4
//Program to calculate:
//(a)3 dB Pulse Broadening in ns/km
//(b)Fiber Bandwidth-Length product

clear;
clc ;
close ;

//Given data
tau_o=12.6;          //ns - 3 dB width of Output Pulse
tau_i=0.3;           //ns - 3 dB width of Input Pulse
L=1.2;               //km - LENGTH

//(a)3 dB Pulse Broadening in ns/km
tau=sqrt(tau_o^2-tau_i^2)/L;

//(b)Fiber Bandwidth-Length product
Bopt=0.44/tau;

//Displaying the Results in Command Window
printf("\n\n\t (a)3 dB Pulse Broadening is %0.1f ns/km.",tau);
printf("\n\n\t (b)Fiber Bandwidth-Length product is %0.1f MHz km.",Bopt*10^3);