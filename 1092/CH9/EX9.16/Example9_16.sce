// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-16

clear; clc; close; // Clear the work space and console.

// Given data
// three-phase SCIM
V = 208 ; // Rated voltage in volt
P_o = 15 ; // Rated power in hp
I = 42 ; // Rated current in A
I_st = 252 ; // Starting current in A
T_st = 120 ; // Full-voltage starting torque in lb-ft
tap = 60*(1/100) ; // Tapping in % employed by compensator

// Calculations
// case a
I_sm = tap * I_st ; // Motor starting current in A at reduced voltage 

// case b
I_L = tap * I_sm ; // Motor line current in A(neglecting tarnsformer exciting 
// current and losses)

// case c
T_s = (tap)^2 * T_st ; // Motor starting torque at reduced voltage in lb-ft

// case d
percent_I_L = I_L / I_st * 100 ; // Percent line current at starting

// case e
percent_T_st = T_s / T_st * 100 ; // Percent motor starting torque

// Display the results
disp("Example 9-16 Solution : ");

printf(" \n a: Motor starting current at reduced voltage : ");
printf(" \n    I_sm = %.1f A to the motor.\n",I_sm);

printf(" \n b: Motor line current neglecting tarnsformer exciting current and losses :");
printf(" \n    I_L = %.2f A drawn from the mains.\n",I_L);

printf(" \n c: Motor starting torque at reduced voltage :\n    T_s = %.1f lb-ft\n",T_s);

printf(" \n d: Percent line current at starting : ");
printf(" \n    = %.f percent of line current at full voltage.\n",percent_I_L);

printf(" \n e: Percent motor starting torque : ");
printf(" \n    = %d percent of starting torque at full voltage.\n",percent_T_st);
