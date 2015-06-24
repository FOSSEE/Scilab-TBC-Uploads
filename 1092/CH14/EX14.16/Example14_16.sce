// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-16

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 500 ; // kVA rating of the step-down transformer
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
R_e2 = 2 ; // Equivalent resistance referred to the
// primary side in mΩ
X_e2 = 6 ; // Equivalent reactance referred to the
// primary side in mΩ
I_2 = 2.174 ; //  Rated secondary current in kA

cos_theta2 = 0.6 ; // leading PF
sin_theta2 = sqrt(1 - (cos_theta2)^2);

// Calculations

// case d
// Induced voltage when the transformer is delivering rated current to unity PF load
E_2 = (V_2*cos_theta2 + I_2*R_e2) + %i*(V_2*sin_theta2 - I_2*X_e2);
E_2_m = abs(E_2);//E_2_m=magnitude of E_2 in volt
E_2_a = atan(imag(E_2) /real(E_2))*180/%pi;//E_2_a=phase angle of E_2 in degrees

// case e
VR = ( (E_2_m - V_2) / V_2 ) * 100 ; // Percent voltage regulation at 0.8 leading PF 

// Display the results
disp("Example 14-16 Solution : ");

printf(" \n d: Induced voltage when the transformer is delivering rated current ");
printf(" \n    to 0.6 leading PF load :\n    E_2 in volt = ");disp(E_2);
printf(" \n    E_2 = %.2f <%.2f V \n ",E_2_m , E_2_a);

printf(" \n e: Voltage regulation at 0.8 leading PF :\n    VR = %.2f percent ",VR );
 
