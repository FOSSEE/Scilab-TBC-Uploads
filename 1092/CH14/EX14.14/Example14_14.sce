// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-14

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 500 ; // kVA rating of the step-down transformer
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
R_e2 = 2 ; // Equivalent resistance referred to the
// primary side in mΩ
X_e2 = 6 ; // Equivalent reactance referred to the
// primary side in mΩ

// Calculations
// case a
I_2 = (kVA ) / V_2 ; // Rated secondary current in kA

// case b
R_e2_drop = I_2 * R_e2 ; // Full-load equivalent resistance voltage drop in volt

// case c
X_e2_drop = I_2 * X_e2 ; // Full-load equivalent reactance voltage drop in volt

// case d
// unity PF 
cos_theta2 = 1;
sin_theta2 = sqrt(1 - (cos_theta2)^2);

// Induced voltage when the transformer is delivering rated current to unity PF load
E_2 = (V_2*cos_theta2 + I_2*R_e2) + %i*(V_2*sin_theta2 + I_2*X_e2);
E_2_m = abs(E_2);//E_2_m=magnitude of E_2 in volt
E_2_a = atan(imag(E_2) /real(E_2))*180/%pi;//E_2_a=phase angle of E_2 in degrees

// case e
VR = ( (E_2_m - V_2) / V_2 ) * 100 ; // Percent voltage regulation at unity PF 

// Display the results
disp("Example 14-14 Solution : ");

printf(" \n a: Rated secondary current :\n    I_2 = %.3f kA \n ", I_2 );

printf(" \n b: Full-load equivalent resistance voltage drop : ");
printf(" \n    I_2*R_c2 = %.2f V \n", R_e2_drop );

printf(" \n c: Full-load equivalent reactance voltage drop : ");
printf(" \n    I_2*X_c2 = %.2f V \n", X_e2_drop );

printf(" \n d: Induced voltage when the transformer is delivering rated current ");
printf(" \n    to unity PF load :\n    E_2 in volt = ");disp(E_2);
printf(" \n    E_2 = %.2f <%.2f V \n ",E_2_m , E_2_a);

printf(" \n e: Voltage regulation at unity PF :\n    VR = %.2f percent ",VR );
