// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 6: AC DYNAMO VOLTAGE RELATIONS-ALTERNATORS
// Example 6-7

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 100 ; // kVA rating of the 3-phase alternator
V_L = 1100 ; // Line voltage of the 3-phase alternator in volt

// dc-resistance test data
E_gp1 = 6 ; // generated phase voltage in volt 
V_l = E_gp1 ; // generated line voltage in volt
I_a1 = 10 ; // full-load current per phase in A
cos_theta = 0.8 ; // 0.8 PF lagging 
sin_theta = sqrt( 1 - (cos_theta)^2 ); // 

// open-circuit test data
E_gp2 = 420 ; // generated phase voltage in volt 
I_f2 = 12.5 ; // Field current in A

// short-circuit test data
I_f3 = 12.5 ; // Field current in A
// Line current I_l = rated value   in A

// Calculated data from Ex.6-4
I_L = 52.5 ; // Rated line current in A
I_a = I_L ; // Rated current per phase in A
E_gp = 532 + %i*623 ; // Generated voltage at 0.8 PF lagging
X_s = 4.6 ; // Synchronous reactance per phase
V_p = 635 ; // Phase voltage in volt

// Calculations
// case a
P_T = sqrt(3) * V_L * I_L * cos_theta ; // Total output 3-phase power

// case b
P_p_b = P_T / 3 ; // Total output 3-phase power per phase

// case c
E_gp_m=abs(E_gp);//E_gp_m=magnitude of E_gp in volt
E_gp_a=atan(imag(E_gp) /real(E_gp))*180/%pi;//E_gp_a=phase angle of E_gp in degrees

// case d
theta = acos(0.8)*180/%pi; // phase angle for PF in degrees
theta_plus_deba = E_gp_a ; // phase angle of E_gp in degrees
deba = theta_plus_deba - theta ; // Torque angle in degrees

// case e
P_p_e = (E_gp_m/X_s)*V_p*sind(deba); // Approximate output power/phase (Eq.(6-10))

// case f
P_p_f = E_gp_m * I_a * cosd(theta_plus_deba); // Approximate output power/phase (Eq.(6-9))

// Display the results
disp("Example 6-7 Solution : ");
printf("\n root 3 value is taken as %f , so slight variations in the answer.\n", sqrt(3));
printf(" \n a: P_T = %d W \n", P_T );
printf(" \n b: P_p = %.2f W \n", P_p_b );
printf(" \n c: E_gp = %d <%.2f V \n", E_gp_m, E_gp_a );
printf(" \n    where %d is magnitude in V and %.2f is phase angle in degrees.\n",E_gp_m,E_gp_a);
printf(" \n d: Torque angle, deba = %.2f degrees \n", deba );
printf(" \n e: P_p = %d W \n", P_p_e );
printf(" \n f: P_p = %d W ", P_p_f );

 
