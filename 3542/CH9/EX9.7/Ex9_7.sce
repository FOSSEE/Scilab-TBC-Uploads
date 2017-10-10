// Example no 9.7
// To evaluate 4 different radio standards and to choose the one with maximum capacity
// Page no. 472

clc;
clear all;

// Given data
ABc=30*10^3;                                              // Channel bandwidth of system A
ACImin=18;                                                // The tolerable value of carrier to interference ratio for system A
BBc=25*10^3;                                              // Channel bandwidth of system B
BCImin=14;                                                // The tolerable value of carrier to interference ratio for system B
CBc=12.5*10^3;                                           // Channel bandwidth of system C
CCImin=12;                                                // The tolerable value of carrier to interference ratio for system C // Value of CCImin is given wrong in book
DBc=6.25*10^3;                                           // Channel bandwidth of system D
DCImin=9;                                                // The tolerable value of carrier to interference ratio for system D
Bc=6.25*10^3;                                            // Bandwidth of particular system

ACIeq=ACImin+20*log10(Bc/ABc);                           // Minimum C/I for system A when compared to the (C/I)min for particular system
BCIeq=BCImin+20*log10(Bc/BBc);                           // Minimum C/I for system B when compared to the (C/I)min for particular system
CCIeq=CCImin+20*log10(Bc/CBc);                           // Minimum C/I for system C when compared to the (C/I)min for particular system
DCIeq=DCImin+20*log10(Bc/DBc);                           // Minimum C/I for system D when compared to the (C/I)min for particular system

// Displaying the result in command window
printf('\n Minimum C/I for system A when compared to the (C/I)min for particular system = %0.3f dB',ACIeq);
printf('\n Minimum C/I for system B when compared to the (C/I)min for particular system = %0.2f dB',BCIeq);
printf('\n Minimum C/I for system C when compared to the (C/I)min for particular system = %0.0f dB',CCIeq); 
printf('\n Minimum C/I for system D when compared to the (C/I)min for particular system = %0.0f dB',DCIeq);
printf('\n \n Based on comparison, the smallest value of C/I should be selected for maximum capacity. So, System B offers the best capacity.')
