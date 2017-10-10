// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.6 :
// Page number 272
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
A = 0.98*exp(%i*0.3*%pi/180)       // Constant
B = 82.5*exp(%i*76.0*%pi/180)      // Constant(ohm)
C = 0.0005*exp(%i*90.0*%pi/180)    // Constant(mho)
D = A                              // Constant
V_S = 110.0                        // Sending end voltage(kV)
V_R = 110.0                        // Receiving end voltage(kV)

// Calculations
alpha = phasemag(A)                                                 // α(°)
beta = phasemag(B)                                                  // β(°)
P_max = (V_S*V_R/abs(B))-(abs(A)*V_R**2/abs(B)*cosd((beta-alpha)))  // Maximum power transfer(MW)
B_new = abs(B)*sind(beta)                                           // Constant(ohm)
beta_new = 90.0                                                     // β(°)
P_max_new = (V_S*V_R/B_new)-(V_R**2/B_new*cosd(beta_new))           // Maximum power transfer(MW)

// Results
disp("PART II - EXAMPLE : 10.6 : SOLUTION :-")
printf("\nSteady state stability limit, P_max = %.2f MW", P_max)
printf("\nSteady state stability limit if shunt admittance is zero & series resistance neglected, P_max = %.2f MW \n", P_max_new)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to precision")
