// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.33 :
// Page number 712-713
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 500.0      // Rating of IM(hp)
N_nl = 40.0     // No-load speed(rpm)
S_fl = 0.12     // Slip at full-load
T_l = 41500.0   // Load torque(kg-m)
t = 10.0        // Duration of each rolling period(sec)

// Calculations
g = 9.81
T_fl = hp*746*60/(2*%pi*N_nl*g*(1-S_fl))     // Torque at full-load(kg-m)
T_m = 2.0*T_fl                               // Motor torque at any instant(kg-m)
slip = S_fl*N_nl                             // Slip(rpm)
slip_rad = slip*2*%pi/60                     // Slip(rad/sec)
k = slip_rad/T_fl
J = -g*t/(k*log(1-(T_m/T_l)))                // Inertia of flywheel(kg-m^2)

// Results
disp("PART IV - EXAMPLE : 1.33 : SOLUTION :-")
printf("\nInertia of flywheel required, J = %.3e kg-m^2\n", J)
printf("\nNOTE: ERROR : J = 2.93*10^6 kg-m^2 and not 2.93*10^5 as mentioned in the textbook solution")
