//Example 13.2
//Program to determine the operating bandwidth of the receiver

clear;
clc ;
close ;

//Given data
SNL=-85.45;          //dBm - SHOT NOISE LIMIT
eeta=0.86;           //*100 percent - EFFICIENCY FOR IDEAL RECEIVER
Lambda=1.54*10^(-6); //metre - OPERATING WAVELENGTH
SNR=12;              //dB - SIGNAL TO NOISE RATIO
h= 6.626*10^(-34);   //J/K - PLANK's CONSTANT
c=2.998*10^8;        //m/s - VELOCITY OF LIGHT IN VACCUM

//Incoming Signal Power
Ps=10^(SNL/10);

//Operating bandwidth of the receiver
B=eeta*Ps*Lambda/(h*c*10^(SNR/10));

//Displaying the Result in Command Window
printf("\n\n\t Operating bandwidth of the receiver, B = %0.1f GHz.",B/10^9);