// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-3

clear; clc; close; // Clear the work space and console.

// Given data
// 3- phase Y-connected synchronous motor
P = 6 ; // No. of poles
hp = 50 ; // power rating of the synchronous motor in hp
V_L = 440 ; // Line voltage in volt
X_s = 2.4 ; // Synchronous reactance in ohm
R_a = 0.1 ; // Effective armature resistance in ohm
alpha = 20 ; // The rotor shift from the synchronous position in
// electrical degrees.
E_gp_a = 240 ; // Generated voltage/phase in volt when the motor is under-excited(case a)
E_gp_b = 265 ; // Generated voltage/phase in volt when the motor is under-excited(case b)
E_gp_c = 290 ; // Generated voltage/phase in volt when the motor is under-excited(case c)

// Calculations
V_p = V_L / sqrt(3); // Phase voltage in volt
// case a
E_ra = (V_p - E_gp_a * cosd(alpha)) + %i*(E_gp_a * sind(alpha));
E_ra_m = abs(E_ra);//E_ra_m=magnitude of E_ra in volt
E_ra_a = atan(imag(E_ra) /real(E_ra))*180/%pi;//E_ra_a=phase angle of E_ra in degrees

Z_s = R_a + %i*X_s ; // Synchronous impedance in ohm

I_ap1  = E_ra / Z_s ; // Armature current/phase in A/phase
I_ap1_m = abs(I_ap1);//I_ap1_m=magnitude of I_ap1 in A
I_ap1_a = atan(imag(I_ap1) /real(I_ap1))*180/%pi;//I_ap1_a=phase angle of I_ap1 in degrees 

cos_theta_a = cosd(I_ap1_a); // Power factor
Ia_m1 = abs(I_ap1_m); // Absoulte value of magnitude of I_ap1

P_d1 = 3 * (E_gp_a*Ia_m1) * cosd(160 - I_ap1_a); // // Internal developed power in W
// 160 + I_ap1_a is the angle between E_gp_a and I_ap1
Pd1 = abs(P_d1); // Consider absolute value of power in W for calculating hp

Horse_power1 = Pd1 / 746 ; // Horsepower developed by the armature in hp 

// case b
E_rb = (V_p - E_gp_b * cosd(alpha)) + %i*(E_gp_b * sind(alpha));
E_rb_m = abs(E_rb);//E_rb_m=magnitude of E_rb in volt
E_rb_a = atan(imag(E_rb) /real(E_rb))*180/%pi;//E_rb_a=phase angle of E_rb in degrees

I_ap2  = E_rb / Z_s ; // Armature current/phase in A/phase
I_ap2_m = abs(I_ap2);//I_ap2_m=magnitude of I_ap2 in A
I_ap2_a = atan(imag(I_ap2) /real(I_ap2))*180/%pi;//I_ap2_a=phase angle of I_ap2 in degrees 

cos_theta_b = cosd(I_ap2_a); // Power factor
Ia_m2 = abs(I_ap2_m); // Absoulte value of magnitude of I_ap2

P_d2 = 3 * (E_gp_b*Ia_m2) * cosd(160 - I_ap2_a); // // Internal developed power in W
// 160 + I_ap2_a is the angle between E_gp_b  and I_ap2
Pd2 = abs(P_d2); // Consider absolute value of power in W for calculating hp

Horse_power2 = Pd2 / 746 ; // Horsepower developed by the armature in hp 

// case c
E_rc = (V_p - E_gp_c * cosd(alpha)) + %i*(E_gp_c * sind(alpha));
E_rc_m = abs(E_rc);//E_rc_m=magnitude of E_rc in volt
E_rc_a = atan(imag(E_rc) /real(E_rc))*180/%pi;//E_rc_a=phase angle of E_rc in degrees

I_ap3  = E_rc / Z_s ; // Armature current/phase in A/phase
I_ap3_m = abs(I_ap3);//I_ap3_m=magnitude of I_ap3 in A
I_ap3_a = atan(imag(I_ap3) /real(I_ap3))*180/%pi;//I_ap3_a=phase angle of I_ap3 in degrees 

cos_theta_c = cosd(I_ap3_a); // Power factor
Ia_m3 = abs(I_ap3_m); // Absoulte value of magnitude of I_ap3

P_d3 = 3 * (E_gp_c*Ia_m3) * cosd(160 - I_ap3_a); // // Internal developed power in W
// 160 + I_ap3_a is the angle between E_gp_c  and I_ap3
Pd3 = abs(P_d3); // Consider absolute value of power in W for calculating hp

Horse_power3 = Pd3 / 746 ; // Horsepower developed by the armature in hp 

// Display the results
disp("Example 8-3 Solution : ");
disp("Slight variations in power values are because of non-approximation of I_a & cos(E_gp,I_a) values during power calculations in scilab ")
printf(" \n a: V_p = %.f <0 V \n ",V_p);
printf(" \n    E_r in V = ");disp(E_ra);
printf(" \n    E_r = %.2f <%.2f V \n ",E_ra_m,E_ra_a);
printf(" \n    I_ap in A = ");disp(I_ap1);
printf(" \n    I_ap = %.2f <%.2f A \n", I_ap1_m , I_ap1_a );
printf(" \n    cos(theta) = %.4f lagging \n ", cos_theta_a );
printf(" \n    P_d = %d W drawn from bus(motor operation)\n", P_d1 );
printf(" \n    Horsepower = %.1f hp \n\n", Horse_power1 );

printf(" \n b: E_r in V = ");disp(E_rb);
printf(" \n    E_r = %.2f <%.2f V \n ",E_rb_m,E_rb_a);
printf(" \n    I_ap in A = ");disp(I_ap2);
printf(" \n    I_ap = %.2f <%.2f A \n", I_ap2_m , I_ap2_a );
printf(" \n    cos(theta) = %.4f = %.f(unity PF) \n ", cos_theta_b, cos_theta_b );
printf(" \n    P_d = %d W drawn from bus(motor operation)\n", P_d2 );
printf(" \n    Horsepower = %.1f hp \n\n", Horse_power2 );

printf(" \n c: E_r in V = ");disp(E_rc);
printf(" \n    E_r = %.2f <%.2f V \n ",E_rc_m,E_rc_a);
printf(" \n    I_ap in A = ");disp(I_ap3);
printf(" \n    I_ap = %.2f <%.2f A \n", I_ap3_m , I_ap3_a );
printf(" \n    cos(theta) = %.4f leading \n ", cos_theta_c );
printf(" \n    P_d = %d W drawn from bus(motor operation)\n", P_d3 );
printf(" \n    Horsepower = %.1f hp \n\n", Horse_power3 );


