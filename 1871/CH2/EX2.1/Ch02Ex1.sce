// Scilab code Ex2.1: Pg:55 (2008)
clc;clear;
V1 = 250;    // Accelerating potential of electron in first region, volts
theta1 = 50;    // Angle of incidence, degrees
theta2 = 30;    // Angle of refraction, degrees
// According to Bethe's law  sind(theta1)/sind(theta2) = []V2/V1]^1/2
// On solving for V2
V2 = V1*(sind(theta1)/sind(theta2))^2;    // Potential in second region, volts
deltaV = (V2-V1);    // Potential difference between two regions, volts
printf("\nPotential difference between two regions of an electric field = %5.1f V", deltaV);

// Result 
// Potential difference between two regions of an electric field = 336.8 V 