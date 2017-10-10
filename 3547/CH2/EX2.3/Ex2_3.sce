// Example no.2.3
// To compare deltaT for step index fiber with parabolic-index fiber
// Page no. 43

clc;
clear;

// Given data
n1=1.47;                                           // Refractive index of core
n2=1.45;                                           // Refractive index of cladding
L=1*10^3;                                          // Length of medium in meter
c=3*10^8;                                          // speedof ligth in (m/s)
delta=(n1-n2)/n1;

// The deltaT for step index fiber
deltaTSIF=((n1^2*L*delta)/(c*n2))*10^9;            //Pulse width for step index fiber

// deltaT for parabolic-index fiber
deltaTPIF=((n1^2*delta^2*L)/(8*c))*10^9;          // Pulse width for parabolic-index fiber

// Displaying the result in command window
printf('\n Pulse width for step index fiber = %0.2f ns',deltaTSIF);
printf('\n Pulse width for parabolic index fiber = %0.4f ns',deltaTPIF);

// The answer of pulse width for parabolic index fiber is wrong in book

disp('Thus, the intermodal dispersion can be significantly reduced by using parabolic-index fiber');
