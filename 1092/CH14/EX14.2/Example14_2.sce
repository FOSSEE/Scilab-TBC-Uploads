// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-2

clear; clc; close; // Clear the work space and console.

// Given data
V_h = 2300 ; // high voltage in volt
V_l = 115 ; // low voltage in volt
V_1 = 2300 ; // Primary voltage in volt
V_2 = 115 ; // Secondary voltage in volt
f = 60 ; // Frequency in Hz
S = 4.6 ; // kVA rating of the step-down transformer
S_1 = S ; 
S_2 = S ;
V_per_turn = 2.5 ; // Induced EMF per turn in V/turn
// Ideal transformer

// Calculations
// case a
N_h = V_h / V_per_turn ; // Number of high-side turns
N_l = V_l / V_per_turn ; // Number of low-side turns

N_1 = N_h;// Number of turns in the primary
N_2 = N_l;// Number of turns in the secondary

// case b
I_1 = S_1*1000 / V_1 ; // Rated primary current in A
I_2 = S_2*1000 / V_2 ; // Rated secondary current in A

I_h = 2 ; // Rated current in A on HV side
I_l = 40 ; // Rated current in A on LV side

// case c
// subscript c for alpha_stepdown and alpha_stepup indicates case c
alpha_stepdown_c = N_1 / N_2 ; // step-down transformation ratio
alpha_stepup_c = N_l / N_h ; // step-up transformation ratio

// case d
// subscript d for alpha_stepdown and alpha_stepup indicates case d
alpha_stepdown_d = I_2 / I_1 ; // step-down transformation ratio
alpha_stepup_d = I_h / I_l ; // step-up transformation ratio

// Display the results
disp("Example 14-2 Solution : ");

printf(" \n a: Number of high-side turns :\n    N_h = %d t = N_1 \n",N_h);
printf(" \n    Number of low-side turns :\n    N_l = %d t = N_2\n",N_l);

printf(" \n b: Rated primary current :\n    I_h = I_1 = %d A \n",I_1);
printf(" \n    Rated secondary current :\n    I_l = I_2 = %d A\n",I_2);

printf(" \n c: step-down transformation ratio :\n    α = N_1/N_2 = %d\n",alpha_stepdown_c);
printf(" \n    step-up transformation ratio :\n    α = N_l/N_h = %.2f\n",alpha_stepup_c);

printf(" \n d: step-down transformation ratio :\n    α = I_2 / I_1 = %d\n",alpha_stepdown_d);
printf(" \n    step-up transformation ratio :\n    α = I_h / I_lh = %.2f\n",alpha_stepup_d);
