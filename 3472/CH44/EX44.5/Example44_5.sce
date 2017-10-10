// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 6: MOTORS FOR ELECTRIC TRACTION

// EXAMPLE : 6.5 :
// Page number 792-793
clear ; clc ; close ; // Clear the work space and console

// Given data
I_1 = 100.0                // Current(A)
N_1 = 71.0                 // Speed(kmph)
F_t1 = 2225.0              // Tractive effort(N)
I_2 = 150.0                // Current(A)
N_2 = 57.0                 // Speed(kmph)
F_t2 = 6675.0              // Tractive effort(N)
I_3 = 200.0                // Current(A)
N_3 = 50.0                 // Speed(kmph)
F_t3 = 11600.0             // Tractive effort(N)
I_4 = 250.0                // Current(A)
N_4 = 45.0                 // Speed(kmph)
F_t4 = 17350.0             // Tractive effort(N)
I_5 = 300.0                // Current(A)
N_5 = 42.0                 // Speed(kmph)
F_t5 = 23200.0             // Tractive effort(N)
D_A = 101.6                // Size of wheels(cm)
ratio_gear = 72.0/23       // Gear ratio
D_B = 106.7                // Size of wheels(cm)
ratio_gear_new = 75.0/20   // Gear ratio

// Calculations
N_B = ratio_gear*D_B/(ratio_gear_new*D_A)    // Speed in terms of V(kmph)
F_tB = D_A*ratio_gear_new/(ratio_gear*D_B)   // Tractive effort in terms of F_tA(N)
N_B1 = N_B*N_1                               // Speed(kmph)
F_tB1 = F_tB*F_t1                            // Tractive effort(N)
N_B2 = N_B*N_2                               // Speed(kmph)
F_tB2 = F_tB*F_t2                            // Tractive effort(N)
N_B3 = N_B*N_3                               // Speed(kmph)
F_tB3 = F_tB*F_t3                            // Tractive effort(N)
N_B4 = N_B*N_4                               // Speed(kmph)
F_tB4 = F_tB*F_t4                            // Tractive effort(N)
N_B5 = N_B*N_5                               // Speed(kmph)
F_tB5 = F_tB*F_t5                            // Tractive effort(N)

// Results
disp("PART IV - EXAMPLE : 6.5 : SOLUTION :-")
printf("\nNew characteristics of motor")
printf("\n_______________________________________")
printf("\n Current(A)  :  Speed(kmph)  :  F_t(N)")
printf("\n_______________________________________")
printf("\n  %.f        :   %.1f        :   %.f ", I_1,N_B1,F_tB1)
printf("\n  %.f        :   %.1f        :   %.f ", I_2,N_B2,F_tB2)
printf("\n  %.f        :   %.1f        :   %.f ", I_3,N_B3,F_tB3)
printf("\n  %.f        :   %.1f        :   %.f ", I_4,N_B4,F_tB4)
printf("\n  %.f        :   %.1f        :   %.f ", I_5,N_B5,F_tB5)
printf("\n_______________________________________\n")
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
