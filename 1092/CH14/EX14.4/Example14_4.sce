// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-4

clear; clc; close; // Clear the work space and console.

// Given data
N_1 = 600 ; // Number of primary turns 
N_2 = 150 ; // Some number of secondary turns 
N_3 = 300 ; // Some number of secondary turns 
Z_2 = 30 ; // Resistive load in ohm across N_2
Z_3 = 15 ; // Resistive load in ohm across N_3
R_2 = 30 ;
R_3 = 15 ;
V_p = 16 ; // Primary applied voltage in volt
cos_theta = 1 ; // unity PF

// Calculations
// case a
Z_2_prime = Z_2 * (N_1/N_2)^2 ; // Impedance reflected to the primary by load Z_2 in ohm

// case b
Z_3_prime = Z_3 * (N_1/N_3)^2 ; // Impedance reflected to the primary by load Z_3 in ohm

// case c
// Total impedance reflected to the primary in ohm
Z_1 = (Z_2_prime * Z_3_prime) / (Z_2_prime + Z_3_prime) ; 

// case d
I_1 = V_p / Z_1 ; // Total current drawn from the supply in A

// case e
P_t = V_p * I_1 * cos_theta ; // Total power in W drwan from the supply at unity PF

// case f
V_2 = V_p * (N_2/N_1) ; // Voltage across Z_2 in volt
P_2 = (V_2)^2 / R_2 ; // Power dissipated in load Z_2 in W

// case g
V_3 = V_p * (N_3/N_1) ; // Voltage across Z_3 in volt
P_3 = (V_3)^2 / R_3 ; // Power dissipated in load Z_3 in W

// case h
P_total = P_2 + P_3 ; // Total power dissipated in both loads in W

// Display the results
disp("Example 14-4 Solution : ");

printf(" \n a: Impedance reflected to the primary by load Z_2 : ");
printf(" \n    Z_2 = %d ohm \n ",Z_2_prime );

printf(" \n b: Impedance reflected to the primary by load Z_3 : ");
printf(" \n    Z_3 = %d ohm \n ",Z_3_prime );

printf(" \n c: Total impedance reflected to the primary : ");
printf(" \n    Z_1 = %.1f ohm \n ",Z_1 );

printf(" \n d: Total current drawn from the supply : ");
printf(" \n    I_1 = %.1f A \n ",I_1 );

printf(" \n e: Total power drawn from the supply at unity PF : ");
printf(" \n    P_t = %.1f W \n ",P_t );

printf(" \n f: Voltage across Z_2 in volt :\n    V_2 = %d V \n ",V_2 );
printf(" \n    Power dissipated in load Z_2 :\n    P_2 = %.2f W \n",P_2 );

printf(" \n g: Voltage across Z_3 in volt :\n    V_3 = %d V \n ",V_3 );
printf(" \n    Power dissipated in load Z_3 :\n    P_3 = %f W \n",P_3 );

printf(" \n h: Total power dissipated in both loads :\n    P_t = %.1f W",P_total);
