//Example 14.1
//Program to determine the attenuation per kilometer for the fiber 
//and estimate the accuracy of the result

clear;
clc ;
close ;

//Given data
L1=2*10^3;          //metres - INITIAL LENGTH
L2=2;               //metres - FINAL LENGTH
V1=2.1;             //volts - INITIAL OUTPUT VOLTAGE
V2=10.7;            //volts - FINAL OUTPUT VOLTAGE

//Attenuation per Kilometer
alpha_dB=10/(L1-L2)*log10(V2/V1);

//Uncertainity in measured attenuation
Uncertainity=0.2/(L1-L2);

//Displaying the Results in Command Window
printf("\n\n\t Attenuation is %0.1f dB/km.",alpha_dB*10^3);
printf("\n\n\t Uncertainity in measured attenuation is +-%0.1f dB.",Uncertainity*10^3);