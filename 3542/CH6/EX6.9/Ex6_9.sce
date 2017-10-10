// Example no 6.9
// To determine phase and values of Ik and Qk during transmission of bit stream 001011 using pi/4 DQPSK.
// Page no. 307

clc;
clear all;

// Given data
theta0=0;                                                                // Initial phase in rad
phi1=%pi/4;                                                              // Carrier phase shift for the input bit pair 11 [Feh91], [Rap91b]
phi2=(3*%pi)/4;                                                          // Carrier phase shift for the input bit pair 01 [Feh91], [Rap91b]
phi3=(-3*%pi)/4;                                                         // Carrier phase shift for the input bit pair 00 [Feh91], [Rap91b]
phi4=-%pi/4;                                                             // Carrier phase shift for the input bit pair 10 [Feh91], [Rap91b]

// For transmission of first pair of bits 00
theta1=theta0+phi3;                                                      // Phase of signal during transmission of first bit pair 00
I1=cos(theta1);                                                          // In-phase pulse produced at the output of signal mapping
Q1=sin(theta1);                                                          // Quadrature pulse produced at the output of signal mapping

// For transmission of second pair of bits 10
theta2=theta1+phi4;                                                      // Phase of signal during transmission of second bit pair 10
I2=cos(theta2);                                                          // In-phase pulse produced at the output of signal mapping
Q2=sin(theta2);                                                          // Quadrature pulse produced at the output of signal mapping

// For transmission of third pair of bits 11
theta3=theta2+phi1;                                                      // Phase of signal during transmission of third bit pair 11
I3=cos(theta3);                                                          // In-phase pulse produced at the output of signal mapping
Q3=sin(theta3);                                                          // Quadrature pulse produced at the output of signal mapping

// Displaying the result in command window
printf('\n Phase of signal during transmission of first bit pair 00 = %0.0f degree',theta1*(180/%pi));
printf('\n In-phase pulse produced during transmission of first bit pair 00 = %0.3f',I1);
printf('\n Quadrature pulse produced during transmission of first bit pair 00 = %0.3f',Q1);

printf('\n \n Phase of signal during transmission of second bit pair 10 = %0.0f degree',theta2*(180/%pi));
printf('\n In-phase pulse produced during transmission of second bit pair 10 = %0.0f',I2);
printf('\n Quadrature pulse produced during transmission of second bit pair 10 = %0.0f',Q2);

printf('\n \n Phase of signal during transmission of third bit pair 11 = %0.0f degree',theta3*(180/%pi));
printf('\n In-phase pulse produced during transmission of third bit pair 11 = %0.3f',I3);
printf('\n Quadrature pulse produced during transmission of third bit pair 11 = %0.3f',Q3);
