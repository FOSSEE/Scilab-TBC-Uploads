// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-9

clear; clc; close; // Clear the work space and console.

// Given data
// single phase alternator
V = 500 ; // Rated voltage of the alternator in volt
P = 20 ; // Rated power of the alternator in kVA
I = 40 ; // Rated current of the alternator in A
R = 2 ; // Armature resistance in ohm
X = 15 ; // Armature reactance in ohm

// Calculations
// case a
V_b = V ; // base voltage in volt
I_b = I ; // base current in A
R_pu = (R*I_b)/V_b ; // per-unit value of armature resistance in p.u

// case b
jX_pu = (X*I_b)/V_b ; // per-unit value of armature reactance in p.u

// case c
// subscript 1 indicates method 1 for finding Z_p.u
Z_pu1 = R_pu + %i*(jX_pu); // per-unit value of armature impedance in p.u
Z_pu1_m = abs(Z_pu1);//Z_pu1_m = magnitude of Z_pu1 in p.u
Z_pu1_a = atan(imag(Z_pu1) /real(Z_pu1))*180/%pi;//Z_pu1_a=phase angle of Z_pu1 in degrees

// subscript 2 indicates method 2 for finding Z_p.u
Z_pu2 = (R + %i*X)*(I/V); // per-unit value of armature impedance in p.u
Z_pu2_m = abs(Z_pu2);//Z_pu2_m = magnitude of Z_pu2 in p.u
Z_pu2_a = atan(imag(Z_pu2) /real(Z_pu2))*180/%pi;//Z_pu2_a=phase angle of Z_pu2 in degrees

// Display the results
disp("Example 13-9 Solution : ");

printf(" \n a: Armature resistance per unit value\n    R_p.u = %.2f p.u \n",R_pu);

printf(" \n b: Armature reactance per unit value\n    jX_p.u in p.u = ");disp(%i*jX_pu);

printf(" \n c: Armature impedance per unit value\n");
printf(" \n    (method 1)\n    Z_p.u in p.u = ");disp(Z_pu1);
printf(" \n    Z_p.u = %.3f <%.1f p.u \n",Z_pu1_m,Z_pu1_a );

printf(" \n    (method 2)\n    Z_p.u in p.u = ");disp(Z_pu2);
printf(" \n    Z_p.u = %.3f <%.1f p.u \n",Z_pu2_m,Z_pu2_a );
