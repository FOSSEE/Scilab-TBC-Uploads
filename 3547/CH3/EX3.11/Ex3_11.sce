// Example no.3.11
// To calculate (a) the optical gain coefficient Γg required to balance the cavity loss and (b) the threshold electron density Ne
// Page no.135

clc;
clear;

// Given data
L=320*10^-6;                                                  // Cavity length
R1=0.35;                                                      // The reflectivity of ligth wave which is reflected at A
R2=0.35;                                                      // The reflectivity of ligth wave which is reflected at B
aint=10^3;                                                    // Internal cavity loss in m^-1
c=3*10^8;                                                     // Speed of ligth in air
Go=1.73*10^-12;                                               // Gain coefficient in m^3/s
Neo=3.47*10^23;                                               // The value of the carrier density at which the gain coefficient becomes zero in m^-3
n=3.3;                                                        // Refractive index of medium

// (a) the optical gain coefficient Γg required to balance the cavity loss
amir=(1/(2*L))*log(1/(R1*R2));                                  // The loss due to mirrors per m
acav=amir+aint;                                                 // The total cavity loss coefficient
gammag=acav;                                                   // The optical gain coefficient in m^-1

// Displaying the result in command window
printf('\n The optical gain coefficient = %0.2f X 10^3 m^-1',gammag*10^-3);

//(b) the threshold electron density Ne
v=c/n;                                                          // Velocity of ligth in medium
Tph=1/(v*acav);                                                 // The photon lifetime in sec
Neth=Neo+1/(Go*Tph);                                           // The threshold electron density Ne

// Displaying the result in command window
printf('\n The threshold electron density = %0.2f X 10^23 m^-3',Neth*10^-23);

