// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-12

clear; clc; close; // Clear the work space and console.

// Given data
VA_b = 50 ; // Base power rating of the 3-phase Y-connected alternator in MVA
V_b = 25 ; // Base voltage of the 3-phase Y-connected alternator in kV
X_pu = 1.3  ; // per unit value of synchronous reactance
R_pu = 0.05  ; // per unit value of resistance

// Calculations
// case a
// subscript 1 for Z_b indicates method 1 for finding Z_b
Z_b1 = (V_b)^2 / VA_b ; // Base impedance in ohm

// subscript 2 for Z_b indicates method 2 for finding Z_b
S_b = VA_b ; // Base power rating of the 3-phase Y-connected alternator in MVA
I_b = (S_b)/V_b ; // Base current in kA
Z_b2 = V_b / I_b ; // Base impedance in ohm

// case b
Z_b = Z_b1; // Base impedance in ohm
X_s = X_pu * Z_b ; // Actual value of synchronous reactance per phase in ohm

// case c
R_a = R_pu * Z_b ; // Actual value of armature stator resistance per phase in ohm

// case d
// subscript 1 for Z_s indicates method 1 for finding Z_s
Z_s1 = R_a + %i*X_s ; // Synchronous impedance per phase in ohm
Z_s1_m = abs(Z_s1);//Z_s1_m = magnitude of Z_s1 in ohm
Z_s1_a = atan(imag(Z_s1) /real(Z_s1))*180/%pi;//Z_s1_a=phase angle of Z_s1 in degrees

// subscript 2 for Z_s indicates method 2 for finding Z_s
Z_pu = R_pu + %i*X_pu ; // per unit value of impedance
Z_s2 = Z_pu * Z_b ; // Synchronous impedance per phase in ohm
Z_s2_m = abs(Z_s2);//Z_s2_m = magnitude of Z_s2 in ohm
Z_s2_a = atan(imag(Z_s2) /real(Z_s2))*180/%pi;//Z_s2_a=phase angle of Z_s2 in degrees

// case e
S = S_b ; // Base power rating of the 3-phase Y-connected alternator in MVA
P = S * R_pu ; // Full-load copper losses for all three phases in MW

// Display the results
disp("Example 13-12 Solution : ");

printf(" \n a: Base impedance(method 1): \n    Z_b = %.1f ohm\n",Z_b1);
printf(" \n    Base impedance(method 2) : ");
printf(" \n    I_b = %d kA \n    Z_b = %.1f ohm\n",I_b,Z_b2);

printf(" \n b: Actual value of synchronous reactance per phase : ");
printf(" \n    X_s in ohm = ");disp(%i*X_s);

printf(" \n c: Actual value of armature stator resistance per phase : ");
printf(" \n    R_a = %.3f ohm \n ",R_a );

printf(" \n d: Synchronous impedance per phase (method 1): ");
printf(" \n    Z_s in ohm = ");disp(Z_s1);
printf(" \n    Z_s = %.2f <%.1f ohm\n",Z_s1_m,Z_s1_a);
printf(" \n    Synchronous impedance per phase (method 2) : ");
printf(" \n    Z_s in ohm = ");disp(Z_s2);
printf(" \n    Z_s = %.2f <%.1f ohm\n",Z_s2_m,Z_s2_a);

printf(" \n e: Full-load copper losses for all 3 phases : \n    P = %.1f MW",P);
