// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 8: BRAKING

// EXAMPLE : 8.5 :
// Page number 811-812
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
area = 16.13       // Area of brakes(sq.cm/pole face)
phi = 2.5*10**-3   // Flux(Wb)
u = 0.2            // Co-efficient of friction
W = 10.0           // Weight of car(tonnes)

// Calculations
a = area*10**-4                   // Area of brakes(sq.m/pole face)
F = phi**2/(2*%pi*10**-7*a)       // Force(N)
force = F*u                       // Braking effect considering flux and coefficient of friction(N)
beta = u*F/(W*1000)*100           // Rate of retardation produced by braking effect(cm/sec^2)

// Results
disp("PART IV - EXAMPLE : 8.5 : SOLUTION :-")
printf("\nBraking effect, F = %.f N", force)
printf("\nRate of retardation produced by this braking effect, β = %.2f cm/sec^2", beta)
