//Example 7.7
//Determine the optical output power modulated at frequencies
//(a)20 MHz
//(b)100 MHz
//Also determine electrical and optical bandwidths

clear;
clc ;
close ;

//Given data
P_dc=300*10^(-6);          //Watt - OPTICAL OUTPUT POWER
tau_i=5*10^(-9);           //s - CARRIER RECOMBINATION LIFETIME

//(a)Optical output power at 20 MHz
f=20*10^6;             //Hz - OPERATING FREQUENCY
Pe=P_dc/sqrt(1+(2*%pi*f*tau_i)^2);
printf("\n\n\t (a)Optical output power at %1.0f MHz, Pe(%1.0f MHz) = %0.2f uW.",f/10^6,f/10^6,Pe/10^(-6));

//(b)Optical output power at 100 MHz
f=100*10^6;            //Hz - OPERATING FREQUENCY 
Pe=P_dc/sqrt(1+(2*%pi*f*tau_i)^2);
printf("\n\n\t (b)Optical output power at %1.0f MHz, Pe(%1.0f MHz) = %0.2f uW.",f/10^6,f/10^6,Pe/10^(-6));

//Optical Bandwidth
Bopt=sqrt(3)/(2*%pi*tau_i);
printf("\n\n\t Optical Bandwidth, Bopt = %0.1f MHz.",Bopt/10^6);

//Electrical Bandwidth
B=Bopt/sqrt(2);
printf("\n\n\t Electrical Bandwidth, B = %0.1f MHz.",B/10^6);