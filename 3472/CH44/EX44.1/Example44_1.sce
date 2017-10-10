// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 6: MOTORS FOR ELECTRIC TRACTION

// EXAMPLE : 6.1 :
// Page number 788
clear ; clc ; close ; // Clear the work space and console

// Given data
I_1 = 10.0    // Current(A)
T_1 = 54.0    // Torque(N-m)
I_2 = 20.0    // Current(A)
T_2 = 142.0   // Torque(N-m)
I_3 = 30.0    // Current(A)
T_3 = 250.0   // Torque(N-m)
I_4 = 40.0    // Current(A)
T_4 = 365.0   // Torque(N-m)
I_5 = 50.0    // Current(A)
T_5 = 480.0   // Torque(N-m)
I_6 = 60.0    // Current(A)
T_6 = 620.0   // Torque(N-m)
I_7 = 70.0    // Current(A)
T_7 = 810.0   // Torque(N-m)
E = 500.0     // Operating voltage(V)
R_a = 0.6     // Armature resistance(ohm)

// Calculations
N_1 = 9.55*(E-I_1*R_a)*I_1/T_1   // Speed(rpm)
N_2 = 9.55*(E-I_2*R_a)*I_2/T_2   // Speed(rpm)
N_3 = 9.55*(E-I_3*R_a)*I_3/T_3   // Speed(rpm)
N_4 = 9.55*(E-I_4*R_a)*I_4/T_4   // Speed(rpm)
N_5 = 9.55*(E-I_5*R_a)*I_5/T_5   // Speed(rpm)
N_6 = 9.55*(E-I_6*R_a)*I_6/T_6   // Speed(rpm)
N_7 = 9.55*(E-I_7*R_a)*I_7/T_7   // Speed(rpm)

// Results
disp("PART IV - EXAMPLE : 6.1 : SOLUTION :-")
printf("\nSpeed-current of the motor")
printf("\n_______________________________________")
printf("\n Current(A)        :      Speed(rpm)  ")
printf("\n_______________________________________")
printf("\n   %.f              :        %.f ", I_1,N_1)
printf("\n   %.f              :        %.f ", I_2,N_2)
printf("\n   %.f              :        %.f ", I_3,N_3)
printf("\n   %.f              :        %.f ", I_4,N_4)
printf("\n   %.f              :        %.f ", I_5,N_5)
printf("\n   %.f              :        %.f ", I_6,N_6)
printf("\n   %.f              :        %.f ", I_7,N_7)
printf("\n_______________________________________\n")
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
