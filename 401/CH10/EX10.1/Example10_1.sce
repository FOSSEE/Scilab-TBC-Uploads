//Example 10.1
//Program to determine the Refractive Index of the Active Medium and
//the 3dB spectral bandwidth of the device

clear;
clc ;
close ;

//Given data
L=300*10^-6;          //metres - ACTIVE REGION LENGTH
Lambda=1.5*10^-6;     //metres - PEAK GAIN WAVELENGTH
Delta_Lambda=1*10^-9; //metres - MODE SPACING
c= 2.998*10^8;        //m/s - SPEED OF LIGHT
Gs_dB=4.8;            //dB     - SINGLE PASS GAIN
R1=0.3;               //INPUT FACET REFRACTIVITY
R2=0.3;               //OUTPUT FACET REFRACTIVITY

//Refractive Index of the active medium at the peak gain wavelength
n=(Lambda^2)/(2*Delta_Lambda*L);

//Gain Gs from Gs_dB by taking antilog with base 10
Gs=10^((1/10)*Gs_dB);

//3dB spectral Bandwidth
B_fpa=(c/(%pi*n*L))*asin((1-sqrt(R1*R2)*Gs)/(2*sqrt(sqrt(R1*R2)*Gs)));

//Displaying the Results in Command Window
printf("\n\n\t Refractive Index of the active medium at the peak gain wavelength is %0.2f .",n);
printf("\n\n\t 3dB spectral Bandwidth is %0.1f GHz .",B_fpa/10^9);