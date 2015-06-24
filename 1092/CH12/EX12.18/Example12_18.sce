// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-18

clear; clc; close; // Clear the work space and console.

// Given data (Ex.12-16)
// code letter = J
P = 6 ; // Number of poles
S_r = 1176 ; // rotor speed in rpm
V = 220 ; // Rated voltage of SCIM in volt
f = 60 ; // Frequency in Hz
hp_SCIM = 7.5 ; // Power rating of SCIM in hp

R_ap = 0.3 ; // armature resistance in ohm/phase
R_r = 0.144 ; // rotor resistance in ohm/phase
jX_m = 13.5 ; // reactance in ohm/phase
jX_s = 0.5 ; // synchronous reactance in ohm/phase
jX_lr = 0.2 ; // Locked rotor reactance in ohm/phase
P_r = 300 ; // Rotational losses in W
s = 1 ; // unity slip

disp("Example 12-18 Solution : ");

printf(" \n The ratio R_r/s = %.3f ohm, in fig.12-11 , using the format method ",R_r/s);
printf(" \n of mesh analysis,we may write the array by inspection :\n ");
printf(" \n_______________________________________________");
printf(" \n \t     I_1 \t I_2 \t\t V ");
printf(" \n_______________________________________________");
printf(" \n\t (0.3+j14)   -(0+j13.5) \t(127+j0)");
printf(" \n\t-(0+j13.5)   (0.144+j13.7) \t 0");
printf(" \n_______________________________________________\n");

// Calculations

A = [ (0.3 + %i*14) -%i*13.5 ; (-%i*13.5)  (0.144 + %i*13.7) ]; // Matrix containing above mesh eqns array
delta = det(A); // Determinant of A

// case a : Starting stator current I_s per phase in A
I_s = det( [ (127+%i*0) (-%i*13.5) ; 0 (0.144 + %i*13.7) ] ) / delta ;
I_s_m = abs(I_s);//I_s_m=magnitude of I_s in A
I_s_a = atan(imag(I_s) /real(I_s))*180/%pi;//I_s_a=phase angle of I_s in degrees

// case b : power factor of the motor at starting
theta = I_s_a ; // Motor PF angle in degrees
cos_theta = cosd(theta); // Motor PF

// Display the results
disp("Solution : "); 
printf(" \n a: Starting stator current of SCIM :\n    I_s = I_1 = ");disp(I_s);
printf(" \n    I_s = I_1 = %.2f <%.2f A \n ",I_s_m , I_s_a );

printf(" \n b: Power factor of the motor at starting :\n    cosӨ = %.4f ≃ %.3f\n",cos_theta,cos_theta);

printf(" \n    Note : I_s = %.2f A calculated in Ex.12-18 falls between the limits",I_s_m);
printf(" \n           found in Ex.12-17. This verifies the mesh analysis technique.");
