// Example no 4.10
// To find the power at receiver
// Page no. 152

clc;
clear all;

// Given data
d=50*10^3;                                                            // Distance between transmitter and receiver in m
hte=100;                                                              // Effective heigth of transmitter in m
hre=10;                                                               // Effective heigth of receiver in m
EIRP=1*10^3;                                                          // Radiated power in Watt
f=900*10^6;                                                           // Operating frequency in Hz
c=3*10^8;                                                             // Speed of ligth in m/s
lambda=c/f;                                                           // operating wavelength in m
EIRP=20*log10(EIRP);                                                  // Radiated power in dB
Gr=0;                                                                 // Receiving gain in dB

Lf=-10*log10(lambda^2/(4*%pi*d)^2);                                   // Free space path loss in dB
Amu=43;                                                               // Attenuation relative to free space in dB from Okumuras curve
Garea=9;                                                              // Gain due to type of environment in dB from Okumuras curve
Ghte=20*log10(hte/200);                                               // Base station antenna heigth gain factor for 1000m > hte > 30m
Ghre=20*log10(hre/3);                                                 // Mobile antenna heigth gain factor for 10m > hre > 3m
L50=Lf+Amu-Ghte-Ghre-Garea;                                           // Total mean path loss

// The median reeived power
Pr=EIRP-L50+Gr;

//Displaying the result in command window
printf('\n The power at receiver = %0.2f dBm',Pr);

//Answer is varrying due to round-off error
