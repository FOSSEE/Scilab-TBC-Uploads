// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-35

clear; clc; close; // Clear the work space and console.

// Given data
I_L = 100 ; // Load current in A
cos_theta = 0.7 ; // power factor lagging

// Δ-Δ distribution transformer
S = 60 ; // kVA rating of transformer
V_1 = 2300 ; // primary voltage in volt
V_2 = 230 ; // secondary voltage in volt

// Calculations
// case a
V_L = 230 ; // voltage across load in volt
P_T = (sqrt(3)*V_L*I_L*cos_theta)/1000 ; // power consumed by the plant in kW
kVA_T = P_T/cos_theta ; // apparent power in kVA

// case b
kVA = S ; // kVA rating of transformer
V_p = V_2 ; // phase voltage in volt 
I_P2_rated = (kVA*1000)/(3*V_p); // Rated secondary phase current in A
I_L2_rated = sqrt(3)*I_P2_rated ; // Rated secondary line current in A

// case c
//percent load on each transformer = (load current per line) / (rated current per line)
percent_load = I_L / I_L2_rated * 100 ;

// case d
// subscript d for V_L indicates case d ,V_L
V_L_d = 2300 ;
I_P1 = (kVA_T*1000)/(sqrt(3)*V_L_d); // primary phase current in A
I_L1 = sqrt(3)*I_P1 ; // primary line current in A

// case e
kVA_transformer = kVA / 3 ; // kVA rating of each transformer

// Display the results
disp("Example 14-35 Solution : ");

printf(" \n a: power consumed by the plant :\n    P_T = %.1f kW \n ",P_T);
printf(" \n    apparent power :\n    kVA_T = %.1f kVA \n",kVA_T);

printf(" \n b: Rated secondary phase current :\n    I_P2(rated) = %f A ≃ %.f A \n",I_P2_rated,I_P2_rated);
printf(" \n    Rated secondary line current :\n    I_L2(rated) = %f A ≃ %.1f A \n",I_L2_rated,I_L2_rated);

printf(" \n c: percent load on each transformer = %.1f percent \n ",percent_load);

printf(" \n d: primary phase current :\n    I_P1 = %.f A \n",I_P1);
printf(" \n    primary line current :\n    I_L1 = %f A ≃ %.1f A \n",I_L1,I_L1);
printf(" \n    The primary line current drawn by a Δ-Δ bank is √3 times the ");
printf(" \n    line current drawn by a Y-Δ bank.\n");

printf(" \n e: kVA rating of each transformer = %d kVA",kVA_transformer);
