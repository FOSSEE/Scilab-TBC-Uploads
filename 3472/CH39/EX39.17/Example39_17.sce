// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.17 :
// Page number 699
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 50.0           // DC shunt motor rating(hp)
V = 440.0           // Voltage(V)
I_b = 150.0         // Breaking current(A)
N_reduce = 40.0     // Speed of motor fallen by(%)
R_a = 0.1           // Armature resistance(ohm)
I_a_fl = 100.0      // Full-load armature current(A)
N_fl = 600.0        // Full-load speed(rpm)

// Calculations
E_b = V-I_a_fl*R_a                  // Back emf of motor(V)
V_a = V+E_b                         // Voltage across armature when braking starts(V)
R_b = V_a/I_b                       // Resistance required(ohm)
R_extra = R_b-R_a                   // Extra resistance required(ohm)
T_fl = hp*746*60/(2*%pi*N_fl)       // Full-load torque(N-m)
T_initial_b = T_fl*I_b/I_a_fl       // Initial breaking torque(N-m)
E_b2 = E_b*(100-N_reduce)/100       // Back emf at new speed(V)
I = (V+E_b2)/R_b                    // Current(A)
EBT = T_fl*I/I_a_fl                 // Torque when motor speed reduced by 40%(N-m)

// Results
disp("PART IV - EXAMPLE : 1.17 : SOLUTION :-")
printf("\nBraking torque = %.1f N-m", T_initial_b)
printf("\nTorque when motor speed has fallen, E.B.T = %.1f N-m\n", EBT)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
