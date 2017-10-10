// Example no 4.6
// To find a)the length and effective aperture of receiving antenna b)the received power at mobile
// Page no. 125

clc;
clear;

// Given data
d=5*10^3;                                               // distance of mobile from base station in m
E0=1*10^-3;                                             // E-field at 1Km from transmitter in V/m
d0=1*10^3;                                              // Distance from transmitter in m
f=900*10^6;                                             // Carrier frequency used for the system in Hz
c=3*10^8;                                               // Speed of ligth in m/s
gain=2.55;                                              // Gain of receiving antenna in dB
G=10^(gain/10);                                         // Gain of receiving antenna

// a)To find the length and effective aperture of receiving antenna
lambda=c/f;                                             // Wavelength
L=lambda/4;                                             // Length of antenna
Ae=(G*lambda^2)/(4*%pi);                                // Effective aperture of receiving antenna

// Displaying the result in command window
printf('\n Length of antenna = %0.4f m',L);
printf(' = %0.2f cm',L*10^2);
printf('\n Effective aperture of receiving antenna = %0.3f m^2',Ae);

// b)To find the received power at mobile
// Given data
ht=50;                                                  // Heigth of transmitting antenna
hr=1.5;                                                 // Heigth of receiving antenna
ERd=(2*E0*d0*2*%pi*ht*hr)/(d^2*lambda);                 // Electic field at distance d in V/m
Prd=((ERd^2/377)*Ae);                                   // The received power at mobile in W
PrddB=10*log10(Prd);                                    // The received power at mobile in dBW
PrddBm=10*log10(Prd/10^-3);                             // The received power at mobile in dBm
Prd=((ERd^2/377)*Ae)*10^13;                             // The received power at mobile in 10^-13W

// Displaying the result in command window
printf('\n \n The received power at mobile = %0.1f X 10^-13 W',Prd);
printf(' = %0.2f dBW',PrddB);
printf(' = %0.2f dBm',PrddBm);
