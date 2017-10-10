// Example No. 3.1
// To calculate the Einstein A and B coefficients
// Page no.99

clc;
clear;

// Given data
tsp=2*10^-9;                                                            // Spontaneous lifetime associated with 2 → 1 transition in seconds

deltaE=2.4*10^(-19);                                                   // The energy difference between the levels
h=1.054*10^(-34);                                                      // The distance between two levels
omega=deltaE/h;                                                        // Frequency in rad/sec
v=1.25*10^8;                                                           // The velocity of light in the medium in m/s

// The Einstein A and B coefficients
A=(1/tsp)*10^-8;                                                      // Einstein coefficient A
B=(((1/tsp)*%pi^2*v^3)/(h*omega^3))*10^-21;                           // Einstein coefficient B

// Displaying the result in command window
printf('\n Einstein coefficient A = %0.0f X 10^8 s^(-1)',A);
printf('\n Einstein coefficient B = %0.2f X 10^21 m^3/J.s^2',B);

// The answers are varrying due to round off error 
