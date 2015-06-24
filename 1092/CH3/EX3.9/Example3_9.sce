// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-9

clear; clc; close; // Clear the work space and console.

// Given data
kW = 60; // Power rating of the generator in kW
V = 240; //Voltage rating of the generator in V
I_f = 3; // Increase in the field current in A
OC_V = 275; // Over Compounded Voltage in V
I_l = 250; // Rated load current in A
N_f = 200; // No. of turns per pole in the shunt field winding 
N_s = 5; // No. of turns per pole in the series field winding 
R_f = 240; //  Shunt field resistance in ohm
R_s = 0.005; //  Series field resistance in ohm

// Calculations
deba_I_f_N_f = I_f * N_f; 
I_s_N_s = deba_I_f_N_f; // Series field ampere-turns
I_s =( I_s_N_s ) / N_s; // Desired current in A in the series field required to
// produce voltage rise
I_d = I_l - I_s; // Diverter current in A
R_d = ( I_s * R_s ) / I_d; // Diverter resistance in ohm
NL_MMF = ( V / R_f )* N_f; // No-load MMF
I_f_N_f = NL_MMF;
FL_MMF = I_f_N_f + I_s_N_s; // Full-load MMF

// Display the result
disp("Example 3-9 Solution : ")
printf("\n a: Rd = %.5f ohm ", R_d );
printf("\n b: No-load MMF = %d At/pole ", NL_MMF );
printf("\n    Full-load MMF = %d At/pole ", FL_MMF );
