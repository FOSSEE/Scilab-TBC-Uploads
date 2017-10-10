// Example no.3.7
// To calculate (a) the photon lifetime, (b) the threshold current, and (c) the current required to generate a mean photon density of 8.5 × 10^21 m−3
// Page no.130

clc;
clear;

// Given data
w=3*10^(-6);                                            // The active area width in meter
d=0.3*10^(-6);                                          // The active area thickness in meter
L=500*10^(-6);                                          // The length
Te=1*10^(-9);                                           // Electron lifetime
Neth=0.8*10^(24);                                       // Threshold electron density
aint=46*10^2;                                           // Internal cavity loss in m^-1
n=3.5;                                                  // Refrective index of the medium
R1=0.65;                                                // The reflectivity of ligth wave which is reflected at A
R2=0.65;                                                // The reflectivity of ligth wave which is reflected at B

// (a)The photon lifetime
amir=(1/(2*L))*log(1/(R1*R2));                          // The loss due to mirrors per m
c=3*10^8;                                               // Speed of ligth in m/s
v=c/n;                                                  // Speed of ligth in medium (m/s)
Tp=1/(v*(aint+amir));                                  // The photon lifetime in sec

// Displaying the result in command window
printf('\n The photon lifetime = %0.2f ps',Tp*10^12);

// (b)The threshold current
V=w*d*L;                                               //The active volume in m^3
q=1.602*10^(-19);                                      //The electron charge in C
Te=10^-9;                                              //The electron lifetime in sec
Ith=(Neth*q*V)/Te;                                    //The threshold current in mA  

// Displaying the result in command window
printf('\n The threshold current = %0.1f mA',Ith*10^3);

// The answer calculated in book is wrong

// (c)The current required to generate a mean photon density of 8.5 × 10^21 m−3
Nph=8.5*10^21;                                         //Mean photon density
Tph=Tp;                                               //The photon lifetime in sec
I=(Ith+(Nph*q*V)/Tph);                                //The current required to generate a mean photon density of 8.5 × 10^21 m−3

// Displaying the result in command window
printf('\n The current required to generate a mean photon density of 8.5 × 10^21 m^-3 = %0.2f mA',I*10^3)

// The answer calculated in book is wrong
