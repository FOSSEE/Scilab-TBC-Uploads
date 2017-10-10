// Example 4.2 
// To find a)transmitter power in dBm b)Transmitter power in dBW and the received power of antenna in dBm at free space distance of 100m from antenna and 10km
// Page No.109

clc;
clear all;

// Given data
Pt=50;                                             // Transmitter power in W
fc=900*10^6;                                       // Carrier frequency in Hz
C=3*10^8;                                         // Speed of light in m/s

//a)Transmitter power in dBm
PtdBm=round(10*log10(Pt/(1*10^(-3))));            //Transmitter power in dBm

// Displaying the result in command window
printf('\n Transmitter power = %0.1f dBm',PtdBm);

//b)Transmitter power in dBW
PtdBW=round(10*log10(Pt/1));                     //Transmitter power in dBW

// Displaying the result in command window
printf('\n Transmitter power = %0.1f dBW',PtdBW);

// To find receiver power at 100m
Gt=1;                                            //Transmitter gain
Gr=1;                                            //Receiver gain
d=100;                                           //Free space distance from antenna in m
L=1;                                             //System loss factor since no loss in system
lambda=C/fc;                                     //Carrier wavelength in m
Pr=(Pt*Gt*Gr*lambda^2)/((4*%pi)^2*d^2*L);        //Receiver power in W
PrdBm=10*log10(Pr/10^(-3));                      //Receiver power in dBm

//Displaying the result in command window
printf('\n Receiver power = %0.1f dBm',PrdBm);

//For Pr(10km)
d0=100;                                         //Reference distance
d=10000;                                        //Free space distance from antenna
Pr10km=PrdBm+20*log10(d0/d);                    //Received power at 10km from antenna in dBm

//Displaying the result in command window
printf('\n Receiver power at 10km from antenna = %0.1f dBm',Pr10km);

