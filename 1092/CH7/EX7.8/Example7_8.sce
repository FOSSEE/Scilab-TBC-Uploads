// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-8

clear; clc; close; // Clear the work space and console.

// Given data
// EMF's are opposed exactly by 180 degrees
E_gp1 = 200 ; // Terminal voltage of alternator 1 in volt 
E_gp2 = 220 ; // Terminal voltage of alternator 2 in volt 
R_a1 = 0.2 ; // armature resistance of alternator 1 in ohm
R_a2 = 0.2 ; // armature resistance of alternator 2 in ohm
X_a1 = 2 ; // armature reactance of alternator 1 in ohm
X_a2 = 2 ; // armature reactance of alternator 2 in ohm

Z_p1  = R_a1 + %i*X_a1 ; // Effective impedance of alternator 1 in ohm
Z_p2  = R_a1 + %i*X_a2 ; // Effective impedance of alternator 2 in ohm
// Switches are closed at the proper instant for paralleling.

// Calculations
// case a
E_r = (E_gp2 - E_gp1) ; // Effective voltage generated in volt 
I_s = E_r / (Z_p1 + Z_p2); // Synchronizing current in the armature in A
I_s_m = abs(I_s);//I_s_m=magnitude of I_s in A
I_s_a = atan(imag(I_s) /real(I_s))*180/%pi;//I_s_a=phase angle of I_s in degrees

P_2 = E_gp2 * I_s_m * cosd(I_s_a); // Generator action developed by alternator 2 in W

// case b
theta = I_s_a;
// P_1 = E_gp1 * I_s_m * cosd(180 - theta)
// P_1 = -E_gp1 * I_s_m * cosd(theta), 
P_1 = -E_gp1 * I_s_m * cosd(theta); // Synchronizing power received by alternator 1 in W 

// case c
// but consider +ve vlaue for P_1 for finding losses, so
P1 = abs(P_1);
losses = P_2 - P1 ; // Power losses in both armatures in W
check = E_r * I_s_m * cosd(I_s_a); // Verifying losses by Eq.7-7
double_check = (I_s_m)^2 * (R_a1 + R_a2); // Verifying losses by Eq.7-7

// case d
V_p2  = E_gp2 - I_s*Z_p1 ; // Generator action
V_p1  = E_gp1 + I_s*Z_p1 ; // Motor action

// Display the results
disp("Example 7-8 Solution : ");
printf(" \n a: E_r = %d V ",E_r);
printf(" \n    I_s = %.2f <%.2f A ", I_s_m, I_s_a );
printf(" \n    P_2 = %.1f W (total power delivered by alternator 2 ) \n", P_2);

printf(" \n b: P_1 = %f W (synchronizing power received by alternator 1)",P_1);
printf(" \n    Note:Scilab considers phase angle of I_s as %f instead ",I_s_a);
printf(" \n         of -84.3 degrees,so slight variation in the answer P_1.\n");

printf(" \n c: Consider +ve value of P_1 for calculating losses"); 
printf(" \n    Losses: P_2 - P_1 = %.1f W ",losses );
printf(" \n    Check: E_a*I_s*cos(theta) = %.1f W ",check );
printf(" \n    Double check : (I_s)^2*(R_a1+R_a2) = %.1f W as given in Eq.(7-1)",double_check );

printf("\n\n d: From Fig.7-14, V_p2, the terminal phase voltage of ");
printf(" \n    alternator 2, is, from Eq.(7-1)");
printf(" \n    V_p2 = %d V (generator action)\n\n    From section 7-2.1 ",V_p2);
printf(" \n    V_p1 = %d V ( motor action)\n",V_p1);

printf(" \n e: The phasor diagram is shown in Fig.7-14.");

