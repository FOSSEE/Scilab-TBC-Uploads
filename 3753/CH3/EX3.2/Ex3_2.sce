//Example number 3.2, Page number 3.32


clc;clear;close

// Variable declaration
a1=450    // Area of plastered wall
a2=360    // Area of wooden floor and wooden doors
a3=24     // Area of Glass
a4=600    // Area of seats
a5=500    // Area of audience when they are in seats
c1=0.03   // Coefficient of absorption of plastered wall
c2=0.06   // Coefficient of absorption of wooden floor and wooden doors
c3=0.025   // Coefficient of absorption of Glass
c4=0.3    // Coefficient of absorption of seats
c5=0.43   // Coefficient of absorption of audience when they are in seats
l=12 // in m
b=30 // in m
h=6 // in m

// Calculation
V=l*b*h        // volume of the hall
A=(a1*c1)+(a2*c2)+(a3*c3)+(a4*c4)+(a5*c5)  // Total absorption
T=(0.16*V)/A   // Reverbration time

// Result
printf("Volume of the hall = %.f m^3",V)
printf("\nTotal absorption = %0.1f m^2",A)
printf("\nReverbration time = %0.1f second",T)
// Answer given for the Reverbration time in the text book is wrong
