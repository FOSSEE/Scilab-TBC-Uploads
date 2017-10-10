// Example 8.46
// Calculation of maximum repeater spacing of a)ASK hetrodyne b)PSK homodyne  
// Page no 500

clc;
clear;
close;

//Given data

S=0.2;                             // Split loss
c=3*10^8;                          // velocity of light
lambda=1.55*10^-6;                 // Wavelength
B1=50*10^6;                        // Speed of communication
h=6.63*10^-34                      // Planck constant
B2=1*10^9;                         // Speed of communication


// a)Maximum repeater spacing for ASK hetrodyne
P1=(36*h*c*B1)/lambda; 
P1=10*log10(P1/10^-3);
s1=4-P1;
R1=s1/S;
P2= (36*h*c*B2)/lambda;
P2=10*log10(P2/10^-3);
s2=4-P2;
R2=s2/S;
//b)Maximum repeater spacing for PSK homodyne
K1= (9*h*c*B1)/lambda;
K1=10*log10(K1/10^-3);
K1=4-K1;
R3=K1/S;
K2= (9*h*c*B2)/lambda;
K2=10*log10(K2/10^-3);
K2=4-K2;
R4=K2/S;

//Displaying results in the command window            
printf("\n Maximum repeater spacing(in Km) = %0.3f  ",R1);
printf("\n Maximum repeater spacing(in Km) = %0.3f  ",R2);
printf("\n Maximum repeater spacing(in Km) = %0.3f  ",R3);
printf("\n Maximum repeater spacing(in Km) = %0.3f  ",R4);
// The answers vary due to round off error
