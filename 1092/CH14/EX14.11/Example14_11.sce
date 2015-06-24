// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-11

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 500 ; // kVA rating of the step-down transformer
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
f = 60 ; // Frequency in Hz
r_1 = 0.1 ; // Primary winding resistance in ohm
x_1 = 0.3 ; // Primary winding reactance in ohm
r_2 = 0.001 ; // Secondary winding resistance in ohm
x_2 = 0.003 ; // Secondary winding reactance in ohm

// Calculations
alpha = V_1 / V_2 ; // Transformation ratio
// case a
I_2 = (kVA*1000) / V_2 ; // Secondary current in A
I_1 = I_2 / alpha ; // Primary current in A

// case b
Z_2 = r_2 + %i*(x_2); // Secondary internal impedance in ohm
Z_2_m = abs(Z_2);//Z_2_m=magnitude of Z_2 in ohm
Z_2_a = atan(imag(Z_2) /real(Z_2))*180/%pi;//Z_2_a=phase angle of Z_2 in degrees

Z_1 = r_1 + %i*(x_1); // Primary internal impedance in ohm
Z_1_m = abs(Z_1);//Z_1_m=magnitude of Z_1 in ohm
Z_1_a = atan(imag(Z_1) /real(Z_1))*180/%pi;//Z_1_a=phase angle of Z_1 in degrees

// case c
I_2_Z_2 = I_2 * Z_2_m ; // Secondary internal voltage drop in volt
I_1_Z_1 = I_1 * Z_1_m ; // Primary internal voltage drop in volt

// case d
E_2 = V_2 + I_2_Z_2 ; // Secondary induced voltage in volt
E_1 = V_1 - I_1_Z_1 ; // Primary induced voltage in volt

// case e
ratio_E = E_1 / E_2 ; // ratio of primary to secondary induced voltage
ratio_V = V_1 / V_2 ; // ratio of primary to secondary terminal voltage

// Display the results
disp("Example 14-11 Solution : ");

printf(" \n a: Secondary current :\n    I_2 = %.f A \n ",I_2 );
printf(" \n    Primary current :\n    I_1 = %.1f A \n ",I_1 );

printf(" \n b: Secondary internal impedance : \n    Z_2 in ohm = ");disp(Z_2);
printf(" \n    Z_2 = %f <%.2f ohm \n ",Z_2_m , Z_2_a );
printf(" \n    Primary internal impedance : \n    Z_1 in ohm = ");disp(Z_1);
printf(" \n    Z_1 = %f <%.2f ohm \n ",Z_1_m , Z_1_a );

printf(" \n c: Secondary internal voltage drop :\n    I_2*Z_2 = %.2f V \n ",I_2_Z_2);
printf(" \n    Primary internal voltage drop :\n    I_1*Z_1 = %.2f V \n ",I_1_Z_1);

printf(" \n d: Secondary induced voltage :\n    E_2 = %.2f V \n",E_2 );
printf(" \n    Primary induced voltage :\n    E_1 = %.2f V \n",E_1 );

printf(" \n e: Ratio of E_1/E_2 = %.2f = α = N_1/N_2 \n",ratio_E );
printf(" \n    But V_1/V_2 = %d ",ratio_V );
