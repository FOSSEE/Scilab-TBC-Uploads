// Example no 4.11
// To find the mean path loss
// Page no. 166

clc;
clear;

// Given data
d0=1;                                               // Reference distance in m
d=30;                                               // Distance from transmitter in m
nSF=3.27;                                           // Exponent value for same floor
nMF=5.22;                                           // Path loss exponent value for multiple floors
FAF=24.4;                                           // Floor attenuation factor for specified floor in dB
n=2;                                                // Number of blocks
PAF=13;                                             // Particular attenuation factor for paricular obstruction in dB
PLSFd0=31.5;                                        // Attenuation at reference distance for same floor in dB
PLMFd0=5.5;                                         // Attenuation at reference distance for multiple floor in dB

//Mean path loss at same floor
PL1=PLSFd0+10*nSF*log10(d/d0)+FAF+n*PAF;

//Mean path loss at multiple floor
PL2=PLMFd0+10*nMF*log10(d/d0)+n*PAF;

//Displaying the result in command window
printf('\n The mean path loss at same floor = %0.1f dB',PL1);
printf('\n The mean path loss at multiple floor = %0.1f dB',PL2);
