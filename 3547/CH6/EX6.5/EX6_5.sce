// Example 6.5
// Calculation of the OSNR in a bandwidth of 12.49 GHz.
// Page no 263

clc;
clear;
close;

//Given data

G=25;                 // Gain
c=3*10^8;             // Velocity of light
h=6.63*10^-34         // Planck constant
lambda=1545*10^-9;    // Wavelegth
Pi=-22;              // Input power
fn=6;      
B=12.49*10^9;

// The OSNR in a bandwidth of 12.49 GHz
Po=G+Pi;
Po=10^(Po/10);
Po=Po*10^-3;
fn=10^(fn/10);
G=10^(G/10);
f=c/lambda;
r=(G*fn-1)*(h*f/2);
O=Po/(2*r*B);
O=10*log10(O);

// Displaying results in the command window            
printf("\n The OSNR in a bandwidth of 12.49 GHz = %0.2f dB",O);



// The answers vary due to round off error
