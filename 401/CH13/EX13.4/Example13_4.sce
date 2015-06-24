//Example 13.4
//Program to calculate the minimum incoming power level

clear;
clc ;
close ;

//Given data
K=1;                 //CONSTANT FOR HETERODYNE DETECTION 
Z=1;                 //CONSTANT FOR FSK MODULAION SCHEME
eeta=1;              //*100 percent - QUANTUM EFFICIENCY
Bt=400*10^6;         //bps - TRANSMISSION RATE
BER=10^(-9);         //BIT ERROR RATE
h= 6.626*10^(-34);   //J/K - PLANK's CONSTANT
c=2.998*10^8;        //m/s - VELOCITY OF LIGHT IN VACCUM
Lambda=1.55*10^(-6); //metre - OPERATING WAVELENGTH

//Minimum incoming peak power level
Ps=(erfinv(1-2*BER))^2*2*h*c*Bt/Lambda; //erfc(x)=1-erf(x)

//Displaying the Result in Command Window
printf("\n\n\t Minimum incoming peak power level is %0.1f nW or %0.1f dBm.",Ps/10^(-9),10*log10(Ps/(1*10^(-3))));