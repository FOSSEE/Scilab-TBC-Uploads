// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-11

clear; clc; close; // Clear the work space and console.

// Given data (from Ex.12-10)
V = 125 ; // Voltage rating of genrator in volt
P_o = 12500 ; // Power rating of genrator in W
P_hp = 20 ; // Power rating of motor in hp
R_a = 0.1 ; // Armture resistance in ohm
R_f = 62.5 ; // Field resistance in ohm
P_var = 1040 ; // Rated variable electric loss in W

// Calculated data from Ex.12-10
P_k = 1380 ; // Constant losses in W

// Calculations
// Efficiency of the dc shunt generator
// η = (output*L.F) / ( (output*L.F) + P_k + (L.F)^2 * P_a_rated ) * 100 
output = P_o ;
P_a_rated = P_var ;

// case a
LF1 = 25*(1/100); // At 25 % rated output
// Efficiency of the dc shunt generator at 25 % rated output
eta_1 = (output*LF1) / ( (output*LF1) + P_k + (LF1)^2 * P_a_rated ) * 100 ; 

// case b
LF2 = 50*(1/100); // At 50 % rated output
// Efficiency of the dc shunt generator at 50 % rated output
eta_2 = (output*LF2) / ( (output*LF2) + P_k + (LF2)^2 * P_a_rated ) * 100 ; 

// case c
LF3 = 75*(1/100); // At 75 % rated output
// Efficiency of the dc shunt generator at 75 % rated output
eta_3 = (output*LF3) / ( (output*LF3) + P_k + (LF3)^2 * P_a_rated ) * 100 ; 

// case d
LF4 = 125*(1/100); // At 125 % rated output
// Efficiency of the dc shunt generator at 125 % rated output
eta_4 = (output*LF4) / ( (output*LF4) + P_k + (LF4)^2 * P_a_rated ) * 100 ; 


// Display the results
disp("Example 12-11 Solution : ");

printf(" \n a: η at %.2f rated output = %.2f percent \n ",LF1,eta_1);

printf(" \n b: η at %.2f rated output = %.2f percent \n ",LF2,eta_2);
printf(" \n    Please note: Calculation error for case b: η in the textbook.\n");

printf(" \n c: η at %.2f rated output = %.2f percent \n ",LF3,eta_3);

printf(" \n d: η at %.2f rated output = %.2f percent \n ",LF4,eta_4);
