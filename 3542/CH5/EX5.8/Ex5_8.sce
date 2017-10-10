// Example no 5.8
// To find the average fade duration
// Page no. 225

clc;
clear all;

// Given data
rho1=0.01;                                            // Threshold level
rho2=0.1;                                             // Threshold level
rho3=1;                                               // Threshold level
fm=200;                                               // Doppler frequency

t1=(exp(rho1^2)-1)/(rho1*fm*sqrt(2*%pi));             // The average fade duration
t2=(exp(rho2^2)-1)/(rho2*fm*sqrt(2*%pi));             // The average fade duration
t3=(exp(rho3^2)-1)/(rho3*fm*sqrt(2*%pi));             // The average fade duration

// Displaying the result in command window
printf('\n The average fade duration (for rho = 0.01) = %0.1f microseconds',t1*10^6);
printf('\n The average fade duration (for rho = 0.1) = %0.0f microseconds',t2*10^6);
printf('\n The average fade duration (for rho = 1) = %0.2f microseconds',t3*10^3);
