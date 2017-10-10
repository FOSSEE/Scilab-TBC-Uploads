// Example no. 1.8
// To calculate a)magnitude of the wave vector of the refracted wave b)x-component and z-component of the wave vector
// Page no.26

clc;
clear;

//Given data
n1=1;                                               // Refractive index of air
n2=1.45;                                            // Refractive index of slap
theta1=%pi/3;                                       // Angle of incidence
lambdam=1.0889*10^(-6);                             // Wavelength in medium
theta2=asin(sin(theta1)/n2);                        // Angle of refraction

// a)To calculate magnitude of the wave vector of the refracted wave
k=((2*%pi)/lambdam);                               // Wavenumber

// Displaying the result in command window
printf('\n Magnitude of the wave vector of the refracted wave is same as wave number = %0.2f X 10^6 m^-1',k*10^(-6));

// b)To calculate x-component and z-component of the wave vector
kx=k*sin(theta2);                                   // x-component of the wave vector
kz=k*cos(theta2);                                   // z-component of the wave vector

// Displaying the result in command window
printf('\n z-component of the wave vector = %0.2f X 10^6 m^-1',kz*10^(-6));
printf('\n x-component of the wave vector = %0.2f X 10^6 m^-1',kx*10^(-6));
// The answer is varrying due to round-off error 
