//Example 12.10
//Program to estimate ratio of SNR of the coaxial system to the SNR
//of the fiber system

clear;
clc ;
close ;

//Given data
V=5;                  //volts - TRANSMITTER PEAK OUTPUT VOLTAGE
Zo=100;               //ohms - CABLE IMPEDANCE
T=290;                //Kelvin - OPERATING TEMPERATURE
lambda=0.85*10^(-6);  //metre - WAVELENGTH
K=1.38*10^(-23);      //J/K - BOLTZMANN's CONSTANT
n=0.7;                //(*100) percent - QUANTUM EFFICIENCY
Pi=1*10^(-3);         //Watts - OPTICAL POWER
h=6.626*10^(-34);     //(m^2)Kg/s - PLANK's CONSTANT
c=2.998*10^8;         //m/s - SPEED OF LIGHT 

//Ratio SNR(coax)/SNR(fiber)
Ratio=V^2*h*c/(2*K*T*Zo*n*Pi*lambda);

//Displaying the Result in Command Window
printf("\n\n\t SNR(coax)/SNR(fiber) = %d dB.",10*log10(Ratio));