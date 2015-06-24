// Chapter 11 example 13
//------------------------------------------------------------------------------
clc;
clear;
// Given data
apogee  = 35000;        // farthest point in kms
perigee = 500;          // closest point in kms
r       = 6360;         // radius of earth in kms
G       = 6.67*10^-11   // gravitational constant
M       = 5.98*10^24;   // mass of earth in kgs
// calculations
//funcprot(0)
apogee_dist = apogee + r       // apogee distance in kms
perigee_dist= perigee+r ;       // perigee distance in kms
a           = (apogee_dist + perigee_dist)/2;   // semi-major axis of elliptical orbit
T           = (2*%pi)*sqrt((a*10^3)^3/(G*M));          // orbital time period
hr          = T/3600                        // conv. from sec to hrs and min
t           = modulo(T,3600)                // conv. from sec to hrs and min
mi          = t/60                          // conv. from sec to hrs and min
u           = G*M
Vapogee     = sqrt(u*((2/(apogee_dist*10^3)) - (1/(a*10^3))));      // velocity at apogee point
Vperigee    = sqrt((G*M)*((2/(perigee_dist*10^3)-(1/(a*10^3)))))    // velocity at perigee point

// Output
mprintf('Orbital Time Period = %d Hrs %d min \n Velocity at apogee = %3.3f Km/s\n Velocity at perigee = %3.3f Km/s',hr,mi,Vapogee/1000,Vperigee/1000)
mprintf('\n Note: Calculation mistake in textbook in finding velocity at apogee point')
