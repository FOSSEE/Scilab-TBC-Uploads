//Example 12.19
//Program to estimate the maximum system length for satisfactory 
//performance

clear;
clc ;
close ;

//Given data
SNR_dB=17;              //dB - REQUIRED SNR
L=100*10^3;             //metre - INTERVAL SPACING
K=4;                    //FOR AMPLIFIER
h= 6.626*10^(-34);      //J/K - PLANK's CONSTANT
c=2.998*10^8;           //m/s - VELOCITY OF LIGHT IN VACCUM
B=1.2*10^(9);           //bit/s - TRANSMISSION RATE
Pi_dBm=0;               //dBm - INPUT POWER
Lambda=1.55*10^(-6);    //metre - OPERATING WAVELENGTH
alpha_fc=0.22;          //dB/km - FIBER CABLE ATTENUATION
alpha_j=0.03;           //dB/km - SPLICE LOSS

//Calculation of SNR and Pi
SNR=10^(SNR_dB/10);
Pi=10^(Pi_dBm/10)*10^(-3);

//Maximum system length
Lto=(Pi*Lambda*10^(-(alpha_fc+alpha_j)*L/10/10^3)/(K*h*c*B))/SNR*L;

//Displaying the Result in Command Window
printf("\n\n\t Maximum system length for satisfactory performance is %1.0f X 10^4 km.",Lto/10^7);