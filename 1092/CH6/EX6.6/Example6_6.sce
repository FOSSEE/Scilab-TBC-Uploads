// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 6: AC DYNAMO VOLTAGE RELATIONS-ALTERNATORS
// Example 6-6

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase Y-connected alternator
E_L = 11000 ; // Line voltage generated in volt
kVA = 165000 ; // kVA rating of the alternator
R_p = 0.1 ; // Armature resistance in ohm/per phase
Z_p = 1.0 ; // Synchronous reactance/phase
Z_r = 0.8 ; // Reactor reactance/phase

// Calculations
E_p = E_L / sqrt(3); // Rated phase voltage in volt
I_p = (kVA * 1000)/(3*E_p); // Rated current per phase in A

// case a
I_max_a = E_p / R_p ; // Maximum short-circuit current in A (case a)
overload_a = I_max_a / I_p ; // Overload (case a)

// case b
I_steady = E_p / Z_p ; // Sustained short-circuit current in A
overload_b = I_steady / I_p ; // Overload (case b)

// case c
Z_t = R_p + %i*Z_r ; // Total reactance per phase
I_max_c = E_p / Z_t ; // Maximum short-circuit current in A (case b)
I_max_c_m=abs(I_max_c);//I_max_c_m=magnitude of I_max_c in A
I_max_c_a=atan(imag(I_max_c) /real(I_max_c))*180/%pi;//I_max_c_a=phase angle of I_max_c in degrees
overload_c = I_max_c_m / I_p ; // Overload (case a)

// Display the results
disp("Example 6-6 Solution : ");
printf("\n root 3 value is taken as %f , so slight variations in the answer.\n", sqrt(3));
printf(" \n a: I_max = %d A ", I_max_a );
printf(" \n    overload = %.1f * rated current \n", overload_a );

printf(" \n b: I_steady = %d A ", I_steady );
printf(" \n    overload = %.2f * rated current \n", overload_b );

printf(" \n c: Rectangular form :\n   I_max = "); disp(I_max_c);
printf(" \n    Polar form :");
printf(" \n    I_max = %d <%.2f A ", I_max_c_m , I_max_c_a );
printf(" \n    where %d is magnitude and %.2f is phase angle\n",I_max_c_m,I_max_c_a);
printf(" \n    overload = %.3f * rated current \n", overload_c );
