// Example 6.32
// Calculation of signal to noise ratio
// Page no 495

clc;
clear;
close;

//Given data
I=152.3*10^-9;                     // Peak photocurrent
s=74.15*10^-20;                    // Shot noise 
t=4.94*10^-17;                    // Mean square shot noise current
F=10*log10(3);                    // Noise figure
B=15*10^6;                        // Bandwidth
T=298;                            // Room temperature
k=1.381*10^-23;                   // Boltzman constant
R=5*10^3;                         // Load resistance
e=1.602*10^-19;                  // Charge of an electron


// Signal to noise ratio
S=(I^2)/((2*e*B*(2+I))+(4*k*T*B*F)/R);
S=S*10^3;




//Displaying results in the command window            
printf("\n Signal to noise ratio = %0.2f  ",S);


// The answers vary due to round off error
