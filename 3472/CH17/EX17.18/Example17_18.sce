// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.18 :
// Page number 305
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 210.0           // Rating of generator(MVA)
P = 2.0               // Number of poles
f = 50.0              // Frequency(Hz)
MI = 60.0*10**3       // Moment of inertia(kg-mt^2)

// Calculations
N = 120.0*f/P                            // Speed(r.p.m)
KE = 1.0/2*MI*(2*%pi*N/f)**2/10**6       // Energy stored in the rotor at rated speed(MJ)
H = KE/MVA                               // Inertia constant(MJ/MVA)
G = MVA
M = G*H/(180*f)                          // Angular momentum(MJ-sec/elect.degree)

// Results
disp("PART II - EXAMPLE : 10.18 : SOLUTION :-")
printf("\nEnergy stored in the rotor at the rated speed, KE = %.2e MJ", KE)
printf("\nValue of inertia constant, H = %.2f MJ/MVA", H)
printf("\nAngular momentum, M = %.3f MJ-sec/elect.degree", M)
