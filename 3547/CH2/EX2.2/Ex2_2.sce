// Example no. 2.2
// To find maximum bit-rate distance product
// Page no. 41

clc;
clear;

// Given data
n1=1.46;                                               // Refractive index of core
delta=0.01;                                            // Relative difference of refractive index
L=1*10^3;                                              // Fiber length
c=3*10^(8);                                            // Speed of ligth in km/sec

n2=n1*(1-delta);                                       // Refractive index of cladding
deltaT=(n1^2*L*delta)/(c*n2);                          // Delay in sec
BL=(((c*n2)/(n1^2*delta))/10^3)*10^-6;                 // maximum bit-rate distance product in Mb/s.km
deltaT=((n1^2*L*delta)/(c*n2))*10^9;                   // Delay in ns

// Displaying the result in command window
printf('\n Refractive index of cladding = %0.4f',n2);
printf('\n Delay = %0.0f ns',deltaT);
printf('\n Approximate delay = %0.0f ns',deltaT+1);
printf('\n Maximum bit-rate distance product = %0.1f Mb/(s.km)',BL);

