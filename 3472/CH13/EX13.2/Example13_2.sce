// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 6: INTERFERENCE OF POWER LINES WITH NEIGHBOURING COMMUNICATION CIRCUITS

// EXAMPLE : 6.2 :
// Page number 206-207
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0             // Frequency(Hz)
l = 160.0            // Length of line(km)
V = 132.0*10**3      // Line voltage(V)
P = 25.0*10**6       // Load delivered(W)
PF = 0.8             // Lagging power factor
r = 5.0/1000         // Radius of power line conductor(m)
d = 4.0              // Spacing b/w conductors(m)
OS = 6.0             // Distance(m)
OT = 6.5             // Distance(m)
CT = 18.0            // Distance(m)

// Calculations
AO = 3**0.5*d/2.0                                             // Distance A to O(m). From figure E6.2
AS = OS+AO                                                    // Distance A to S(m)
AT = AO+OT                                                    // Distance A to T(m)
OB = d/2.0                                                    // Distance O to B(m)
BS = (OB**2+OS**2)**0.5                                       // Distance B to S(m)
BT = (OB**2+OT**2)**0.5                                       // Distance B to T(m)
M_A = 0.2*log(AT/AS)                                          // Mutual inductance at A(mH/km)
M_B = 0.2*log(BT/BS)                                          // Mutual inductance at B(mH/km)
M = M_B-M_A                                                   // Mutual inductance at C(mH/km)
I = P/(3**0.5*V*PF)                                           // Current(A)
E_m = 2.0*%pi*f*M*I*10**-3*l                                  // Induced voltage(V)
V_A = V/3**0.5                                                // Phase voltage(V)
h = AO+CT                                                     // Height(m)
V_SA = V_A*log10(((2*h)-AS)/AS)/log10(((2*h)-r)/r)            // Potential(V)
H = CT                                                        // Height(m)
V_B = V_A                                                     // Phase voltage(V)
V_SB = V_B*log10(((2*H)-BS)/BS)/log10(((2*H)-r)/r)            // Potential(V)
V_S = V_SB-V_SA                                               // Total potential of S w.r.t earth(V)

// Results
disp("PART II - EXAMPLE : 6.2 : SOLUTION :-")
printf("\nInduced voltage at fundamental frequency, E_m = %.1f V", E_m)
printf("\nPotential of telephone conductor S above earth, V_S = %.f V \n", V_S)
printf("\nNOTE: ERROR: Changes in obtained answer is due to precision and calculation mistakes in textbook")
