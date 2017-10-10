// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 2: CONSTANTS OF OVERHEAD TRANSMISSION LINES

// EXAMPLE : 2.8 :
// Page number 104-105
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 7.0          // Number of strands
r = 1.0          // Radius of each conductor. Assume it 1 for calculation purpose

// Calculations
D_1_2 = 2.0*r                                     // Distance between conductor 1 & 2
D_1_6 = 2.0*r                                     // Distance between conductor 1 & 6
D_1_7 = 2.0*r                                     // Distance between conductor 1 & 7
D_3_4 = 2.0*r                                     // Distance between conductor 3 & 4
D_1_4 = 4.0*r                                     // Distance between conductor 1 & 4
D_1_3 = (D_1_4**2-D_3_4**2)**(1.0/2)              // Distance between conductor 1 & 3
D_1_5 = D_1_3                                     // Distance between conductor 1 & 5
GMR = 0.7788*r                                    // GMR
n_o = n-1                                         // Number of outside strands
D_s = (GMR**n*(D_1_2**2*D_1_3**2*D_1_4*D_1_7)**6*(2*r)**n_o)**(1.0/49)   // GMR
overall_radius = 3*r                              // Overall conductor radius
ratio = D_s/overall_radius                        // Ratio of GMR to overall conductor radius

// Results
disp("PART II - EXAMPLE : 2.8 : SOLUTION :-")
printf("\nGeometric mean radius of the conductor, D_s = %.3f*r", D_s)
printf("\nRatio of GMR to overall conductor radius = %.4f ", ratio)
