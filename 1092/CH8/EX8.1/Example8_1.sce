// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-1

clear; clc; close; // Clear the work space and console.

// Given data
// 3- phase Y-connected synchronous motor
P = 20 ; // No. of poles
hp = 40 ; // power rating of the synchronous motor in hp
V_L = 660 ; // Line voltage in volt
beta = 0.5 ; // At no-load, the rotor is retarded 0.5 mechanical degree from 
// its synchronous position.
X_s = 10 ; // Synchronous reactance in ohm
R_a = 1.0 ; // Effective armature resistance in ohm

// Calculations
// case a
funcprot(0); // To avoid this message "Warning : redefining function: beta"
alpha = P * (beta/2); // The rotor shift from the synchronous position in
// electrical degrees.

// case b
V_p = V_L / sqrt(3); // Phase voltage in volt
E_gp = V_p ; // Generated voltage/phase at no-load in volt (given)
E_r = (V_p - E_gp*cosd(alpha)) + %i*(E_gp*sind(alpha));
 // Resultant emf across the armature per phase in V/phase
E_r_m = abs(E_r);//E_r_m=magnitude of E_r in volt
E_r_a = atan(imag(E_r) /real(E_r))*180/%pi;//E_r_a=phase angle of E_r in degrees

// case c
Z_s = R_a + %i*X_s ; // Synchronous impedance in ohm
Z_s_m = abs(Z_s);//Z_s_m=magnitude of Z_s in ohm
Z_s_a = atan(imag(Z_s) /real(Z_s))*180/%pi;//Z_s_a=phase angle of Z_s in degrees

I_a  = E_r / Z_s ; // Armature current/phase in A/phase
I_a_m = abs(I_a);//I_a_m=magnitude of I_a in A
I_a_a = atan(imag(I_a) /real(I_a))*180/%pi;//I_a_a=phase angle of I_a in degrees 

// case d
theta = I_a_a ; // Phase angle between V_p and I_a in degrees
P_p = V_p * I_a_m * cosd(theta); // Power per phase drawn by the motor from the bus
P_t = 3*P_p ; // Total power drawn by the motor from the bus

// csae e
P_a = 3 * (I_a_m)^2 * R_a ; // Armature power loss at no-load in W
P_d = (P_t - P_a)/746 ; // Internal developed horsepower at no-load

// Display the results
disp("Example 8-1 Solution : ");
printf(" \n a: alpha = %d degrees (electrical degrees)\n",alpha );

printf(" \n b: E_gp = %d V also, as given ",E_gp);
printf(" \n    E_r in V/phase = ");disp(E_r);
printf(" \n    E_r = %.1f <%.1f V/phase \n",E_r_m, E_r_a );

printf(" \n c: Z_s in ohm/phase = ");disp(Z_s);
printf(" \n    Z_s = %.2f <%.1f ohm/phase \n",Z_s_m, Z_s_a );
printf(" \n    I_a in A/phase = ");disp(I_a);
printf(" \n    I_a = %.2f <%.2f A/phase \n ",I_a_m, I_a_a);

printf(" \n d: P_p = %.2f W/phase ",P_p );
printf(" \n    P_t = %.2f W ",P_t);
printf(" \n    Note: Slight variations in power values is due to slight variations");
printf(" \n          in V_p , I_a and theta values from those of the textbook\n");

printf(" \n e: P_a = %.f W ",P_a );
printf(" \n    P_d = %d hp ", P_d );
