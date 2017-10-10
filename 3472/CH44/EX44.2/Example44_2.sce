// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 6: MOTORS FOR ELECTRIC TRACTION

// EXAMPLE : 6.2 :
// Page number 788-789
clear ; clc ; close ; // Clear the work space and console

// Given data
N_1 = 500.0    // Speed(rpm)
I_1 = 50.0     // Current(A)
E_1 = 220.0    // Armature voltage(V)
I_2 = 100.0    // Current(A)
E_2 = 350.0    // Armature voltage(V)
I_3 = 150.0    // Current(A)
E_3 = 440.0    // Armature voltage(V)
I_4 = 200.0    // Current(A)
E_4 = 500.0    // Armature voltage(V)
I_5 = 250.0    // Current(A)
E_5 = 540.0    // Armature voltage(V)
I_6 = 300.0    // Current(A)
E_6 = 570.0    // Armature voltage(V)
R_wb = 0.08    // Armature and brush resistance(ohm)
R_f = 0.05     // Resistance of series field(ohm)
V = 600.0      // Operating voltage(V)

// Calculations
R_a = R_wb+R_f               // Armature resistance(ohm)
N_11 = N_1/E_1*(V-I_1*R_a)   // Speed(rpm)
T_1 = 9.55*E_1*I_1/N_1       // Torque(N-m)
N_2 = N_1/E_2*(V-I_2*R_a)    // Speed(rpm)
T_2 = 9.55*E_2*I_2/N_1       // Torque(N-m)
N_3 = N_1/E_3*(V-I_3*R_a)    // Speed(rpm)
T_3 = 9.55*E_3*I_3/N_1       // Torque(N-m)
N_4 = N_1/E_4*(V-I_4*R_a)    // Speed(rpm)
T_4 = 9.55*E_4*I_4/N_1       // Torque(N-m)
N_5 = N_1/E_5*(V-I_5*R_a)    // Speed(rpm)
T_5 = 9.55*E_5*I_5/N_1       // Torque(N-m)
N_6 = N_1/E_6*(V-I_6*R_a)    // Speed(rpm)
T_6 = 9.55*E_6*I_6/N_1       // Torque(N-m)

// Results
disp("PART IV - EXAMPLE : 6.2 : SOLUTION :-")
printf("\nSpeed-torque curve for motor")
printf("\n_______________________________________")
printf("\n Speed(rpm)         :      Torque(N-m)  ")
printf("\n_______________________________________")
printf("\n   %.f             :        %.f ", N_11,T_1)
printf("\n   %.f              :        %.f ", N_2,T_2)
printf("\n   %.f              :        %.f ", N_3,T_3)
printf("\n   %.f              :        %.f ", N_4,T_4)
printf("\n   %.f              :        %.f ", N_5,T_5)
printf("\n   %.f              :        %.f ", N_6,T_6)
printf("\n_______________________________________\n")
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
