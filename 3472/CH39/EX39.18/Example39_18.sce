// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.18 :
// Page number 699-700
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0           // Voltage of IM(V)
p = 4.0             // Number of poles
f = 50.0            // Frequency(Hz)
hp = 25.0           // Power developed(hp)
S = 0.04            // Slip
R_X_2 = 1.0/4       // Ratio of rotor resistance to standstill reactance i.e R2/X2

// Calculations
N_s = 120*f/p                                                                // Synchronous speed(rpm)
N_fl = N_s*(1-S)                                                             // Full load speed(rpm)
T_fl = hp*735.5*60/(2*%pi*N_fl*9.81)                                         // Full-load torque(kg-m)
S_1 = 1.0                                                                    // Slip at standstill
X_R_2 = 1.0/R_X_2                                                            // Ratio of standstill reactance to rotor resistance
T_s_fl = S_1/S*((1+(S*X_R_2)**2)/(1+(S_1*X_R_2)**2))                         // T_standstill/T_fl
T_standstill = T_s_fl*T_fl                                                   // Standstill torque(kg-m)
S_instant = (N_s+N_fl)/N_s                                                   // Slip at instant of plugging
T_initial = (S_instant/S)*((1+(S*X_R_2)**2)/(1+(S_instant*X_R_2)**2))*T_fl   // Initial plugging torque(kg-m)

// Results
disp("PART IV - EXAMPLE : 1.18 : SOLUTION :-")
printf("\nInitial plugging torque = %.1f kg-m", T_initial)
printf("\nTorque at standstill = %.f kg-m\n", T_standstill)
printf("\nNOTE: ERROR: Calculation mistake from full-load torque onwards. Hence, change in obtained answer from that of textbook")
