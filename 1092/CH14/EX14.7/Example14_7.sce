// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-7

clear; clc; close; // Clear the work space and console.

// Given data
V = 10 * exp(%i * 0 * (%pi/180)); // Supply voltage of the source 10<0 V
R_s = 1000 ; // Resistance of the source in ohm 
R_L = 10 ; // Load resistance in ohm
Z_L = R_L ; // Load resistance in ohm

// Calculations
// case a
alpha = sqrt(R_s/R_L) ; // Transformation ratio of the matching transformer for MPT

// case b
V_1 = V / 2 ; // Terminal voltage in volt of the source at MPT 

// case c
V_2 = V_1 / alpha ; // Terminal voltage in volt across the load at MPT

// case d
I_2 = V_2 / Z_L ; // Secondary load current in A (method 1)
I2 = V / (2*alpha*R_L) ; // Secondary load current in A (method 2)

// case e
I_1 = I_2 / alpha ; // Primary load current drawn from the source in A (method 1)
I1 = V / (2*R_s) ; // Primary load current drawn from the source in A (method 2)

// case f
P_L = (I_2)^2 * R_L ; // Maximum power dissipated in the load in W

// case g
P_s = (I_1)^2 * R_s ; // Power dissipated internally within the source in W

// case h
P_T1 = V * I_1 * cosd(0) ; // Total power supplied by the source in W(method 1)

P_T2 = P_L + P_s ; // Total power supplied by the source in W(method 2)

// case i
P_T = P_T1 ;
eta = P_L / P_T * 100 ; // Power transfer efficiency in percent

// Display the results
disp("Example 14-7 Solution : ");

printf(" \n a: Transformation ratio of the matching transformer for MPT : ");
printf(" \n    α = %d \n ",alpha );

printf(" \n b: Terminal voltage of the source at MPT :\n    V_1 = %d V \n",V_1);

printf(" \n c: Terminal voltage across the load at MPT :\n    V_2 = %.1f V \n",V_2);

printf(" \n d: Secondary load current :");
printf(" \n    (method 1) :\n    I_2 = %.2f A = %d mA \n ",I_2, 1000*I_2);

printf(" \n    (method 2) :\n    I_2 = %.2f A = %d mA \n ",I2, 1000*I2);

printf(" \n e: Primary load current drawn from the source : ");
printf(" \n    (method 1) :\n    I_1 = %f A = %d mA  \n ",I_1 , 1000*I_1 );
printf(" \n    (method 2) :\n    I_1 = %f A = %d mA  \n ",I1 , 1000*I1 );

printf(" \n f: Maximum power dissipated in the load : ");
printf(" \n    P_L = %f W = %d mW \n",P_L , 1000*P_L );

printf(" \n g: Power dissipated internally within the source : " );
printf(" \n    P_s = %f W = %d mW \n",P_s , 1000*P_s );

printf(" \n h: Total power supplied by the source : ");
printf(" \n    (method 1) :\n    P_T = %f W = %d mW \n ",P_T1, 1000*P_T1);
printf(" \n    (method 2) :\n    P_T = %f W = %d mW \n ",P_T2, 1000*P_T2);

printf(" \n i: Power transfer efficiency :\n    η = %d percent ",eta );
