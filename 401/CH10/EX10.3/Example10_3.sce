//Example 10.3
//Program to determine:
//(a)The length of the device
//(b)The ASE noise signal power at the output of the amplifier

clear;
clc ;
close ;

//Given data
Gs_dB=30;            //dB - SINGLE PASS GAIN
g_bar=200;           //NET GAIN COEFFICIENT
m=2.2;               //MODE FACTOR
n_sp=4;              //SPONTANEOUS EMISSION FACTOR
h= 6.626*10^(-34);   //J/K - PLANK's CONSTANT
c=2.998*10^8;        //m/s - VELOCITY OF LIGHT IN VACCUM
B=1*10^(12);         //Hz - OPTICAL BANDWIDTH
Lambda=1.55*10^(-6); //metre - OPERATING WAVELENGTH

//(a)The length of the device
L=Gs_dB/(10*g_bar*log10(%e));

//(b)The ASE noise signal power at the output of the amplifier
Gs=10^(Gs_dB/10);
f=c/Lambda;
P_ASE=m*n_sp*(Gs-1)*h*f*B;

//Displaying the Results in Command Window
printf("\n\n\t (a)The length of the SOA is %0.2f X 10^(-3) m.",L/10^(-3));
printf("\n\n\t (b)The ASE noise signal power at the output of the amplifier, P_ASE = %0.2f mW.",P_ASE/10^(-3));