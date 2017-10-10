// Example no 5.9
// To find the average fade duration and average number of bit errors per second. & to determine whether the fading is slow or fast.
// Page no. 225

clc;
clear all;

// Given data
rho=0.707;                                                 // Threshold level
fm=20;                                                     // Doppler frequency
datarate=50;                                               // Bit duration of binary digital modulation in bps
errho=0.1;                                                 // Threshold level below which bit error occurs

t=(exp(rho^2)-1)/(rho*fm*sqrt(2*%pi));                    // The average fade duration 
tb=1/datarate;                                            // Bit period
t1=(exp(errho^2)-1)/(errho*fm*sqrt(2*%pi));               // The average fade duration 

// Displaying the result in command window
printf('\n The average fade duration (for rho = 0.707) = %0.1f ms',t*10^3);
printf('\n The bit period = %0.0f ms',tb*10^3);
printf('\n Since the bit period is greater than average fade duration, for 50bps datarate the signal undergoes fast Rayleigh fading.');
printf('\n \n The average fade duration of the threshold level below which bit error occurs (for rho = 0.1) = %0.3f',t1);
printf('\n Since the average fade duration of the threshold level below which bit error occurs is less than duration of one bit,\n only one bit on average will be lost');
