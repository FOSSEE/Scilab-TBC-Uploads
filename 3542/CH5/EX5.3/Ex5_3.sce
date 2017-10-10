// Example no 5.3
// To find average narrowband power & to compare average narrow band and wideband power
// Page no. 190

clc;
clear all;

// Given data
v=10;                                                             // Velocity of moving mobile
f=1000*10^6;                                                      // Carrier frequency in Hz
c=3*10^8;                                                         // Speed of ligth in air (m/s)
P1=-70;                                                           // Received power of first component in dBm
P2=P1-3;                                                          // Received power of second component in dBm
theta=0;                                                          // Initial phase for both component
P1=(10^(P1/10))*10^-3;                                            // Received power of first component in Watt
P2=(10^(P2/10))*10^-3;                                            // Received power of second component in Watt
lambda=c/f;                                                       // Wavelength

// Narrowband instantaneous power 
rt2=(sqrt(P1)*cosd(0)+sqrt(P2)*cosd(0))^2;                         // Narrowband instantaneous power in pW

// Displaying the result in command window
printf('\n The narrowband instantaneous power = %0.0f pW',rt2*10^12);

// Answer is varrying due to round-off error

// To find average narrowband instantaneous power 
t=0.1;                                                            // Time interval in seconds
theta=((2*%pi*v*t)/lambda)/10;                                    // Phase interval in rad
theta=theta*(180/%pi);                                            // Phase interval in degree
theta1=theta;                                                     // Phase of first component at t=0.1s
theta2=-theta;                                                    // Phase of second component at t=0.1s
rt21=(sqrt(P1)*(complex(cosd(theta1),sind(theta1)))+sqrt(P2)*(complex(cosd(theta2),sind(theta2))))^2;             // Narrowband instantaneous power in pW at t=0.1s
mgrt21=sqrt((real(rt21))^2+(imag(rt21))^2);

// Displaying the result in command window
printf('\n The narrowband instantaneous power (at t=0.1s) = %0.1f pW',mgrt21*10^12);

theta1=theta1+theta;                                              // Phase of first component at t=0.2s
theta2=theta2-theta;                                              // Phase of second component at t=0.2s
rt22=(sqrt(P1)*(complex(cosd(theta1),sind(theta1)))+sqrt(P2)*(complex(cosd(theta2),sind(theta2))))^2;          // Narrowband instantaneous power in pW at t=0.2s
mgrt22=sqrt((real(rt22))^2+(imag(rt22))^2);

// Displaying the result in command window
printf('\n The narrowband instantaneous power (at t=0.2s) = %0.1f pW',mgrt22*10^12);

theta1=theta1+theta;                                              // Phase of first component at t=0.3s
theta2=theta2-theta;                                              // Phase of second component at t=0.3s
rt23=(sqrt(P1)*(complex(cosd(theta1),sind(theta1)))+sqrt(P2)*(complex(cosd(theta2),sind(theta2))))^2;         //Narrowband instantaneous power in pW at t=0.3s
mgrt23=sqrt((real(rt23))^2+(imag(rt23))^2);

// Displaying the result in command window
printf('\n The narrowband instantaneous power (at t=0.3s) = %0.0f pW',mgrt23*10^12);

mgrt24=mgrt21;                                                         // Narrowband instantaneous power in pW at t=0.4s due to repeating phase

// Displaying the result in command window
printf('\n The narrowband instantaneous power (at t=0.4s) = %0.1f pW',mgrt24*10^12);

mgrt25=mgrt22;                                                         // Narrowband instantaneous power in pW at t=0.5s due to repeating phase

// Displaying the result in command window
printf('\n The narrowband instantaneous power (at t=0.5s) = %0.1f pW',mgrt25*10^12);

rt=(rt2+mgrt21+mgrt22+mgrt23+mgrt24+mgrt25)/6;                               // The average narrowband instantaneous power in pW

// Displaying the result in command window
printf('\n An average narrowband instantaneous power = %0.0f pW',rt*10^12);

// Wideband power
Pwb=(P1+P2);                                                     // Widebnd received power in pW

// Displaying the result in command window
printf('\n The wideband received power = %0.0f pW',Pwb*10^12);

printf('\n Comparing narrowband and wideband received power, it is observed that they are vertually identical. But CW signal fades over observation interval (0-0.5S)');
