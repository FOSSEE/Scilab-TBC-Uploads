// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.7 :
// Page number 685-686
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 230.0      // Voltage of DC shunt motor(V)
N_1 = 1000.0   // No load speed(rpm)
R_sh = 40.0    // Shunt resistance(ohm)
N_2 = 1200.0   // Speed with series resistance(rpm)

// Calculations
phi_2 = N_1/N_2        // Flux_2 in terms flux_1
I_N1 = V/R_sh          // Exciting current at 1000 rpm(A)
phi_1 = 11.9           // Flux corresponding to I_N1(mWb)
phi_N2 = phi_1*phi_2   // Flux at 1200 rpm(mWb)
I_phi_N2 = 3.25        // Exciting current corresponding to phi_N2(A)
R = V/I_phi_N2         // Resistance in field circuit(ohm)
R_extra = R-R_sh       // Resistance to be placed in series with shunt field(ohm)

// Results
disp("PART IV - EXAMPLE : 1.7 : SOLUTION :-")
printf("\nResistance to be placed in series with shunt field = %.1f ohm", R_extra)
