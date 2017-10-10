// Example 6.31
// Calculation of a)peak photocurrent , b)shot noise and c)mean square shot noise current
// Page no 489

clc;
clear;
close;

//Given data
n=0.7;                               // Efficiency
lambda=0.9*10^-6;                    // Wavelength
R=5*10^3;                           // Load resistance
I=2*10^-9;                          // Dark current
P=300*10^-6;                        // Incident power
B=15*10^6;                          // Bandwidth
T=298;                             // Room temperature
h=6.62*10^-34;
c=3*10^8;
e=1.602*10^-19;                    // Charge of an electron
k=1.381*10^-23;                    // Boltzman constant

// a)Peak photocurrent
I=(n*P*e*lambda)/(h*c);
I=I*10^6;

//b) Shot noise and mean square shot noise current
s=2*e*B*(2+I);
s=s*10^11;

//c) mean square shot noise current
t=(4*k*T*B)/R;
t=t*10^17;




//Displaying results in the command window            
printf("\n Peak photocurrent (in nA)= %0.3f  ",I);
printf("\n Shot noise(in 10^-20 A)0 = %0.1f  ",s);
printf("\n Mean square shot noise current(in 10^-17 A) = %0.2f  ",t);



// The answers vary due to round off error
