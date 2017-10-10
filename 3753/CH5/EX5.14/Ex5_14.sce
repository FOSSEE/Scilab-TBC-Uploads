//Example 5.14, Page number 5.32
 
clc;clear;close

// variable declaration
P_i=100 // input 
P_o=2 // output
L=10 // in km

// Calculations
S=(10/L)*log(P_i/P_o) // dB/km
O=S*L // dB

// Result
printf("a)Signal attention per unit length = %.1f dB-km^-1",S)
printf("\nb)Overall signal attenuation = %.f dB",O)
// Answer given in the textbook is wrong
