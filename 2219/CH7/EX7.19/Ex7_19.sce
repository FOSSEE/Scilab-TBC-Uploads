// chapter 7 example 8
//-----------------------------------------------------------------------------
clc;
clear;
// given data
S       = 5*10^-2;      // inter spacing distance
lamda   = 6*10^-2;      // operating wavelength in cms
phi_Az   = 25            // angle in azimuth direction
phi_E    = 35            // angle in Elevation direction

// Calculations
theta_Az  = asin((lamda*phi_Az)/(360*S))
theta_E   = asin((lamda*phi_E)/(360*S))
Theta_Az  = theta_Az*(180/%pi)
Theta_E   = theta_E*(180/%pi)

// Output
mprintf('Steering angle in Azimuth = %3.1f°\n Steering angle in Elevation = %3.1f°',Theta_Az,Theta_E);
//-----------------------------------------------------------------------------
