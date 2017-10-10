// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.31 :
// Page number 710-711
clear ; clc ; close ; // Clear the work space and console

// Given data
N_1 = 1000.0   // Speed of dc shunt motor(rpm)
N_2 = 400.0    // Speed of dc shunt motor(rpm)
R = 14.0       // Resistance connected across armature(ohm)
E_1 = 210.0    // EMF induced in armature at 1000 rpm(V)
J = 17.0       // Moment of inertia(kg-m^2)
T_F = 1.0      // Frictional torque(kg-m)

// Calculations
g = 9.81
output = E_1**2/R                        // Motor output(W)
T_E = output*60/(2*%pi*N_1*g)            // Electric braking torque(kg-m)
w_1 = 2*%pi*N_1/60                       // ω_1(rad/sec)
k = T_E/w_1
t = J/(g*k)*log(N_1/N_2)                 // Time taken for dc shunt motor to fall in speed with constant excitation(sec)
kw = T_E*N_2/N_1                         // kω
t_F = J/(g*k)*log((1+T_E)/(1+kw))        // Time for the same fall if frictional torque exists(sec)

// Results
disp("PART IV - EXAMPLE : 1.31 : SOLUTION :-")
printf("\nTime taken for dc shunt motor to fall in speed with constant excitation, t = %.1f sec", t)
printf("\nTime for the same fall if frictional torque exists, t = %.1f sec", t_F)
