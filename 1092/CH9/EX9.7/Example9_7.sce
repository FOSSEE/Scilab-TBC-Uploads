// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-7

clear; clc; close; // Clear the work space and console.

// Given data
P = 8 ; // Number of poles in the SCIM
f = 60 ; // Frequency in Hz
R_r = 0.3 ; // Rotor resistance per phase in ohm
R_x = 0.7 ; // Added resistance in ohm/phase 
R_r_total = R_r + R_x ; // Total resistance per phase in ohm
X_lr = 1.08 ; // Locked rotor reactance in ohm
S_r = 650 ; // Speed in rpm at which motor stalls
E_lr = 112 ; // Induced voltage per phase

// Calculations
// case a
Z_lr = R_r + %i*X_lr ; // Locked rotor impedance per phase
Z_lr_m = abs(Z_lr);//Z_lr_m = magnitude of Z_lr in ohm
Z_lr_a = atan(imag(Z_lr) /real(Z_lr))*180/%pi;//Z_lr_a=phase angle of Z_lr in degrees

I_r = E_lr / Z_lr_m ; // Rotor current per phase
cos_theta_r = cosd(Z_lr_a); // rotor power factor with the rotor short-circuited
cos_theta = R_r / Z_lr_m ; // rotor power factor with the rotor short-circuited

// case b
// 1 at the end of Z_lr1 is just used for showing its different form Z_lr 
// and for ease in calculations
Z_lr1 = R_r_total + %i*X_lr ; // Locked rotor impedance per phase
Z_lr1_m = abs(Z_lr1);//Z_lr1_m = magnitude of Z_lr1 in ohm
Z_lr1_a = atan(imag(Z_lr1) /real(Z_lr1))*180/%pi;//Z_lr1_a=phase angle of Z_lr1 in degrees

I_r1 = E_lr / Z_lr1_m ; // Rotor current per phase
cos_theta_r1 = cosd(Z_lr1_a); // rotor power factor with the rotor short-circuited
cos_theta1 = R_r_total / Z_lr1_m ; // rotor power factor with the rotor short-circuited

// Display the results
disp("Example 9-7 Solution : ");
printf(" \n a: The locked-rotor impedance per phase is : ");
printf(" \n    Z_lr in ohm = "),disp(Z_lr);
printf(" \n    Z_lr = %.2f <%.1f ohm \n",Z_lr_m,Z_lr_a);
printf(" \n    I_r = %.f A \n",I_r);
printf(" \n    cosθ_r = cos(%.1f) = %.3f or \n    cosθ = R_r/Z_lr = %.3f",Z_lr_a,cos_theta_r,cos_theta);

printf(" \n\n\n b: The locked-rotor impedance with added rotor resistance per phase is : ");
printf(" \n    Z_lr in ohm = "),disp(Z_lr1);
printf(" \n    Z_lr = %.2f <%.1f ohm \n",Z_lr1_m,Z_lr1_a);
printf(" \n    I_r = %.1f A \n",I_r1);
printf(" \n    cosθ_r = cos(%.1f) = %.3f or \n    cosθ = R_r/Z_lr = %.3f",Z_lr1_a,cos_theta_r1,cos_theta1);
