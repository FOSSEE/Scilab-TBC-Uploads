// Example 8.47
// Calculation of incident optical power.
// Page no 499

clc;
clear;
close;

//Given data

h=6.62*10^-34;                       // Planck constant
c=3*10^8;                           // velocity of light
lambda=1.55*10^-6;                 // Wavelength
B=400*10^6;                        // Speed of communication

// Maximum repeater spacing
P=(36*h*c*B)/lambda; 
P=10*log10(P/10^-3);


//Displaying results in the command window            
printf("\n Incident optical power(in nW) = %0.3f  ",P);


// The answers vary due to round off error
