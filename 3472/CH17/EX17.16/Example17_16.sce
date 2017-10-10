// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.16 :
// Page number 304-305
clear ; clc ; close ; // Clear the work space and console

// Given data
S = 1000.0          // Rating of generator(MVA)
N = 1500.0          // Speed of alternator(r.p.m)
WR_sq = 5.0*10**6   // WR^2(lb.ft^2)

// Calculations
H = 2.31*10**-10*WR_sq*N**2/S      // Inertia constant(MJ/MVA)
H_100 = H*1000.0/100               // Inertia constant on 100 MVA(MJ/MVA)

// Results
disp("PART II - EXAMPLE : 10.16 : SOLUTION :-")
printf("\nValue of inertia constant, H = %.1f MJ/MVA", H)
printf("\nValue of inertia constant in 100 MVA base, H = %.f MJ/MVA", H_100)
