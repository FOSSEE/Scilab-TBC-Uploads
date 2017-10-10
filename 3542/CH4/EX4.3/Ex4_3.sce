// Example 4.3
// To find a)power at receiver b)magnitude of E-field at receiver c)rms voltage applied to receiver input
// Page no. 112

clc;
clear all;

// Given data
Pt=50;                                                                      // Transmitter power in Watt
fc=900*10^6;                                                                // Carrier frequency in Hz
Gt=1;                                                                       // Transmitter antenna gain
Gr=2;                                                                       // Receiver antenna gain
Rant=50;                                                                    // Receiver antenna resistance in ohm

// a)Power at receiver
d=10*10^3;                                                                  // Distance from antenna in meter
lambda=(3*10^8)/fc;                                                         // Carrier wavelength in meter
Prd1=10*log10((Pt*Gt*Gr*lambda^2)/((4*%pi)^2*d^2));                         // Power at transmitter in dBW
Prd=10*log10(((Pt*Gt*Gr*lambda^2)/((4*%pi)^2*d^2))/(10^-3));                // Power at transmitter in dBm

// Displaying the result in command window
printf('\n Power at receiver = %0.1f dBW',Prd1);
printf('\n Power at receiver = %0.1f dBm',Prd);

// b)Magnitude of E-field at receiver
Ae=(Gr*lambda^2)/(4*%pi);                                                   // Aperture gain
Pr=10^(Prd1/10);                                                            // Receiver power in W
E=sqrt((Pr*120*%pi)/Ae);                                                    // Magnitude of E-field at receiver

// Displaying the result in command window
printf('\n \n Magnitude of E-field at receiver = %0.4f V/m',E);

// c)rms voltage applied to receiver input
Vant=sqrt(Pr*4*Rant)*10^3;                                                 // rms voltage applied to receiver input
//Answer is varrying due to round-off error

//Displaying the result in command window
printf('\n \n RMS voltage applied to receiver input = %0.3f mV',Vant);
