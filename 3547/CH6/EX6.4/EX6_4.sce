// Example 6.4
// Calculation of the amplifier gain
// Page no 262

clc;
clear;
close;

//Given data

Po=0;                   // Signal output of amplifier
//f=7*10^9;             // Cut off frequency
B=7.5*10^9;             // Bandwidth
R=0.9;                  // Responsivity
c=3*10^8;               // Velocity of light
lambda=1550*10^-9;      // Operating frequency
fn=4.5;                 // Noise figure
Ro=0.066*10^-3;         // Beat noise current
h=6.626*10^-34;         // Planck constant

// The amplifier gain
P=10^(Po/10)*10^-3;
r=Ro^2/(4*R^2*B*P);
fn=10^(fn/10);
f=c/lambda;
G=(1/fn)*(((2*r)/(h*f))+1);




//Displaying results in the command window            
printf("\n The amplifier gain = %0.0f  ",G);


// The answers vary due to round off error
