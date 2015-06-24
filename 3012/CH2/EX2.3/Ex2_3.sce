// Given:-
clc;
patm = 10**5                               // atmospheric pressure in pascal.
mp = 45.0                                  // mass of piston in Kg
A = 0.09                                   // face area of piston in m2
deltaV = 0.045                             // increment of the volume of air in m3
m = 0.27                                   // mass of air in kg
deltau = 42.0                              // specific internal energy increase of air in kJ/kg
g = 9.81                                   // local acceleration of gravity


// Part (a) i.e. air is system
// Calculations
p = (mp*g)/A + patm                         // constant pressure of air obtained from equilibrium of piston
w = (p*deltaV)/1000                         // work done in KJ
deltaU = m*deltau                           // internal energy change of air in KJ
Q = w + deltaU                              // applying first with air as system
// Result
printf( '\nheat transfer from resistor to air in KJ for air alone as system is: %.2f',Q)

// The answer given in book is incorrect. deltaU is incorrect in book. 

// Part(b) i.e.  (air+piston) is system
// Calculations
wd = (patm*deltaV)/1000                      // work done in KJ
deltaz = (deltaV)/A                          // change in elevation of piston
deltaPE = (mp*g*deltaz)/1000                 // change in potential energy of piston in KJ
Qt = wd + deltaPE + deltaU                   // applying first law with air plus piston as system 
// Result
printf( '\nheat transfer from resistor to air in KJ for air + piston as system is: %.2f',Qt)

// note : The answer given in book is incorrect.They have miscalculated deltaU.  
