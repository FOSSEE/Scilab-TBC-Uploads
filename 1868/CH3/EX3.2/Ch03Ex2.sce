// Scilab code Ex3.2: Pg 75 (2005)
clc; clear;

// Part (a)
h = 6.63e-34;   // Plank's constant, Js
c = 3e+08;   // Velocity of light, m/s
lamda_green = 540e-09;   // Wavelength of green light, nm
delta_E_green = h*c/lamda_green/1.602e-19;    // Minimum energy change in green light, eV
lamda_red = 700e-09;    // Wavelength of red light, nm
delta_E_red = h*c/lamda_red/1.602e-19;    // Minimum energy change in red light, eV

printf("\nMinimum energy change in green light = %4.2f eV", delta_E_green);
printf("\nMinimum energy change in red light = %4.2f eV", delta_E_red);

// Part (b)
f = 0.50;   // Frequency, Hz
m = 0.1;    // Mass of pendulum, kg
l = 1;      // Length of pendulum, m
theta = %pi/180*10;   // Angle, radians
g = 9.8;   // Acceleration due to gravity, m/s^2
E = m*g*l*(1-cos(theta));
delta_E = (h*f)/(1.6e-19);    //  Minimum energy change in pendulum, eV
delta_E_f = (delta_E*1.6e-19)/E ;   // Fractional energy change 
printf("\nFractional energy change = %3.1fe-32", delta_E_f*1e+32);

// Result
// Minimum energy change in green light = 2.30 eV
// Minimum energy change in red light = 1.77 eV
// Fractional energy change = 2.2e-32 
