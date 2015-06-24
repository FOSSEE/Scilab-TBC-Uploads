// Chapter 4 Additional Example 8
//==============================================================================
clc;
clear;
// input data
h       = 6.625*10^-34       // plancks constant
m       = 9.11*10^-31        // mass of electron in Kg
c       = 3*10^8;            // velocity of light in m/s

// Calculations
ve      = 0.7071*c           // velocity of electron
lamda   = h/(m*ve*sqrt(1-(ve/c)^2))    // de Broglie wavelength

// we know Compton wavelength  ,lamda' - lamda = (h/(mo*c))*(1-cosθ)
// maximum shift θ = 180
theta    = 180
theta1   = theta*%pi/180;
d_lamda  = (h/(m*c))*(1-cos(theta1))
mprintf('de Broglie wavelength = %e m\n',lamda);
mprintf(' compton wavelength    = %e m\n',d_lamda)
mprintf(' The de-Broglie wacelength is equal to the compton wavelength');
//==============================================================================
 
