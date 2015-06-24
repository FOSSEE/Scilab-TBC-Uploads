// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-10

clear; clc; close; // Clear the work space and console.

// Given data
I_a_1 = 38 ; // Armature current in A @ full-load as per example 4-8a
E_c_1 = 109.4 ; // Back EMF in volt @ full-load as per example 4-8a
S_1 = 1800 ; // Speed in rpm @ full-load as per example 4-8a

I_a_2 = 19 ; // Armature current in A @ half-loadas per example 4-8a
E_c_2 = 113.2 ; // Back EMF in volt @ half-load as per example 4-8a
S_2 = 1863 ; // Speed in rpm @ half-load as per example 4-8a

I_a_3 = 47.5 ; // Armature current in A @ 125% overload as per example 4-8b
E_c_3 = 107.5 ; // Back EMF in volt @ 125% overload as per example 4-8b
S_3 = 1769 ; // Speed in rpm @ 125% overload as per example 4-8b

I_a_4 = 63.6 ; // Armature current in A @ overload as per example 4-9
E_c_4 = 104.3 ; // Back EMF in volt @ overload as per example 4-9
S_4 = 1532 ; // Speed in rpm @ overload as per example 4-9

// Calculations
P_d_1 = E_c_1 * I_a_1 ; // Armature power developed @ full-load

P_d_2 = E_c_2 * I_a_2 ; // Armature power developed @ half-load

P_d_3 = E_c_3 * I_a_3 ; // Armature power developed @ 125% overload

P_d_4 = E_c_4 * I_a_4 ; // Armature power developed @ overload

// Display the results
disp(" Example 4-10 Solution : ");
printf("\n Example \t Ia \t Ec \t Speed \t Pd or (Ec*Ia)");
printf("\n _______________________________________________________________________");
printf("\n 4-8a \t\t %d \t %.1f \t %d \t %d W at full-load ", I_a_1,E_c_1,S_1,P_d_1);
printf("\n 4-8a \t\t %d \t %.1f \t %d \t %.1f W at half-load ",I_a_2 , E_c_2 , S_2 , P_d_2);
printf("\n 4-8b \t\t %.1f \t %.1f \t %d \t %d W at 125 percent overload ",I_a_3,E_c_3,S_3,P_d_3);
printf("\n 4-9 \t\t %.1f \t %.1f \t %d \t %d W at overload ",I_a_4,E_c_4,S_4,P_d_4);
printf("\n _______________________________________________________________________");
