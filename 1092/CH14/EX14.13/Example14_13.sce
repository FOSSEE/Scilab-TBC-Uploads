// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-13

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
// calculated data from Example 14-12
Z_L = 0.1058 ; // Load impedance in ohm

// Calculations
alpha = V_1 / V_2 ; // Transformation ratio

// case a
R_e1 = r_1 + (alpha)^2 * r_2 ; // Equivalent internal resistance referred to the
// primary side in ohm

// case b
X_e1 = x_1 + (alpha)^2 * x_2 ; // Equivalent internal reactance referred to the
// primary side in ohm

// case c
Z_e1 = R_e1 + %i*(X_e1) ; // Equivalent internal impedance referred to the
// primary side in ohm
Z_e1_m = abs(Z_e1);//Z_e1_m=magnitude of Z_e1 in ohm
Z_e1_a = atan(imag(Z_e1) /real(Z_e1))*180/%pi;//Z_e1_a=phase angle of Z_e1 in degrees

// case d
Z_L_prime = (alpha)^2 * (Z_L); // Equivalent secondary load impedance referred
//  to the primary side in ohm

// case e
R_L = Z_L ; // Load resistance in ohm
X_L = 0 ; // Load reactance in ohm

// Primary load current in A , when V_1 = 2300 V
I_1 = V_1 / ( (R_e1 + alpha^2*R_L) + %i*(X_e1 + alpha^2*X_L) ); 

// Display the results
disp("Example 14-13 Solution : ");

printf(" \n a: Equivalent internal resistance referred to the primary side :");
printf(" \n    R_c1 = %.2f ohm \n ",R_e1 );

printf(" \n b: Equivalent internal reactance referred to the primary side :");
printf(" \n    X_c1 = %.2f ohm \n ",X_e1 );

printf(" \n c: Equivalent internal impedance referred to the primary side : ");
printf(" \n    Z_c1 in ohm = ");disp(Z_e1);
printf(" \n    Z_c1 = %.3f <%.2f ohm \n ", Z_e1_m , Z_e1_a );

printf(" \n d: Equivalent secondary load impedance referred to the primary side :");
printf(" \n    (alpha)^2 * Z_L = %.2f ohm = (alpha)^2 * R_L \n",Z_L_prime);

printf(" \n e: Primary load current :\n    I_1 = %f A ≈ %.f A ", I_1, I_1);
