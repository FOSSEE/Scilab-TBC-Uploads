// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.2 :
// Page number 753
clear ; clc ; close ; // Clear the work space and console

// Given data
lumens = 800.0        // Flux emitted by a lamp(lumens)
cp = 100.0            // cp of a lamp
d = 2.0               // Distance b/w plane surface & lamp(m)
theta_ii = 45.0       // Inclined surface(°)
theta_iii = 90.0      // Parallel rays(°)

// Calculations
// Case(a)
mscp = lumens/(4.0*%pi)            // mscp of lamp
// Case(b)
I_i = cp/d**2                      // Illumination on the surface when it is normal(lux)
I_ii = cp/d**2*cosd(theta_ii)      // Illumination on the surface when it is inclined to 45°(lux)
I_iii = cp/d**2*cosd(theta_iii)    // Illumination on the surface when it is parallel to rays(lux)

// Results
disp("PART IV - EXAMPLE : 4.2 : SOLUTION :-")
printf("\nCase(a): mscp of the lamp, mscp = %.f ", mscp)
printf("\nCase(b): Case(i)  : Illumination on the surface when it is normal, I = %.f lux", I_i)
printf("\n         Case(ii) : Illumination on the surface when it is inclined to 45°, I = %.3f lux", I_ii)
printf("\n         Case(iii): Illumination on the surface when it is parallel to rays, I = %.f lux\n", abs(I_iii))
printf("\nNOTE: ERROR: Calculation mistake in case(a) in textbook solution")
