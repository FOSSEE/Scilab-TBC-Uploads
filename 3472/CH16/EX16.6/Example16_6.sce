// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.6 :
// Page number 238
clear ; clc ; close ; // Clear the work space and console

// Given data
Y_bus = [[-%i*10.5, 0, %i*5.0, %i*5.0],
         [0, -%i*8.0, %i*2.5, %i*5.0],
         [%i*5.0, %i*2.5, -%i*18.0, %i*10.0],
         [%i*5.0, %i*5.0, %i*10.0, -%i*20.0]]   // Bus admittance matrix

// Calculations
Z_bus = inv(Y_bus)                              // Bus impedance matrix

// Results
disp("PART II - EXAMPLE : 9.6 : SOLUTION :-")
printf("\n[Z_bus] = \n'); disp(Z_bus)
