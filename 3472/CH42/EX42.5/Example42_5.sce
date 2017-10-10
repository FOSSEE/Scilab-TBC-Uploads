// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.5 :
// Page number 754
clear ; clc ; close ; // Clear the work space and console

// Given data
flux = 900.0       // Lamp emitting light(lumens)
D = 30.5           // Diameter of globe(cm)
B = 250.0*10**-3   // Uniform brightness(Ambert)

// Calculations
cp = %pi/4*D**2*(B/%pi)            // Candle power
flux_emit = cp*4*%pi               // Flux emitted by globe(lumens)
flux_abs = flux-flux_emit          // Flux absorbed by globe(lumens)
light_abs_per = flux_abs/flux*100  // Light absorbed(%)

// Results
disp("PART IV - EXAMPLE : 4.5 : SOLUTION :-")
printf("\ncp of the globe = %.f ", cp)
printf("\nPercentage of light emitted by lamp that is absorbed by the globe = %.1f percent\n", light_abs_per)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here & approximation in textbook solution")
