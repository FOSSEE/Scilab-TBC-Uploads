//Example 14.8
//Program to calculate the ratio in dB of back scattered optical 
//power to the forward optical power at the fiber input

clear;
clc ;
close ;

//Given data
NA=0.2;            //NUMERICAL APERTURE
gamma_r=0.7*10^-3; //per m - RAYLEIGH SCATTERING COEFFICIENT
Wo=50*10^(-9);     //s - PULSE DURATION
c=2.998*10^8;      //m/s - VELOCITY OF LIGHT IN VACCUM
n1=1.5;            //CORE REFRACTIVE INDEX

//Calculated Ratio Pra(0)/Pi
Pra0_by_Pi=0.5*NA^2*gamma_r*Wo*c/(4*n1^3);

//Displaying the Result in command window
printf("\n\n\t  Pra(0)/Pi = %0.1f dB.",10*log10(Pra0_by_Pi));
