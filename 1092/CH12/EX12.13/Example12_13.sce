// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-13

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase Y-connected alternator
kVA = 1000 ; // kVA rating of the alternator
V  = 2300 ; // Rated voltage of the alternator in volt

// DC MOTOR
P_hp = 100 ; // Power rating of the dc motor in hp
V_motor  = 240 ; // Rated voltage of the motor in volt
// 4-step efficiency/regulation test
// Test 1 
P_1 = 7.5 ; // motor output in kW

// Test 2
P_2 = 16 ; // motor output in kW
VfIf = 14 ; // Field losses in kW
P_f = VfIf ; // Field losses in kW

// Test 3
P_3 = 64.2 ; // motor output in kW
I_sc = 251 ; // Short ckt current in A

// Test 4
V_L = 1443 ; // Line voltage in volt

// Calculations
// case a
P_r = P_2 ; // Rotational losses in kW From test 2

// case b
P_cu = P_3 - P_1 ; // Full-load armature copper loss in kW

// case c
E_gL = V_L ; // Generated line voltage in volt
Z_s = (E_gL/sqrt(3)) / I_sc ; // Synchronous impedance of the armature in ohm

// case d
R_a = 0.3 ; // Armature resistance in ohm
X_s = sqrt( (Z_s)^2 - (R_a)^2 );  // Synchronous reactance of the armature in ohm

// case e
cos_theta = 0.8 ; // PF lagging
sin_theta = sqrt( 1 - (cos_theta)^2 );
V_p = V / sqrt(3); // Phase voltage in volt

// Generated voltage per phase in volt
I_a = I_sc ; // Armature current in A

E_gp = (V_p*cos_theta + I_a*R_a) + %i*(V_p*sin_theta + I_a*X_s);
E_gp_m = abs(E_gp);//E_gp_m=magnitude of E_gp in volt
E_gp_a = atan(imag(E_gp) /real(E_gp))*180/%pi;//E_gp_a=phase angle of E_gp in degrees

V_nl = E_gp_m ; // No-load voltage in volt
V_fl = V_p ; // Full-load voltage in volt

VR = (V_nl - V_fl)/V_fl * 100 ; // Alternator voltage regulation

// case f
PF = 0.8 ; // lagging PF
LF = 1 ; // load fraction
eta_rated = (LF*kVA*PF)/( (LF*kVA*PF) + (P_f + P_r) + P_cu ) * 100 ; // Efficiency at 0.8 lagging PF

// case g
P_k = (P_f + P_r) ; // Constant losses in kW
L_F = sqrt(P_k/P_cu); // Load fraction for max.efficiency
// at max.efficiency P_k = P_cu
eta_max = (L_F*kVA*PF)/( (L_F*kVA*PF) + 2*P_k ) * 100 ; // Max.Efficiency at 0.8 lagging PF


// case h
P_o = kVA ; // Output power in kVA
P_d = P_o +(3*(I_a)^2*R_a/1000) + (VfIf) ; // Armature power developed in kW at unity PF at rated-load

// Display the results
disp("Example 12-13 Solution : ");

printf(" \n a: From Test 2, Rotational losses :\n    P_r = %d kW \n",P_r);

printf(" \n b: Full-load armature copper loss :\n    P_cu = %.1f kW \n",P_cu);

printf(" \n c: Synchronous impedance of the armature :\n    Z_s = %f Ω ≃ %.2f Ω  \n",Z_s,Z_s);

printf(" \n d: Synchronous reactance of the armature :\n    jX_s = %f Ω ≃ %.2f Ω \n",X_s,X_s);

printf(" \n e: E_gp = ");disp(E_gp);
printf(" \n    E_gp = %.f <%.1f V\n",E_gp_m,E_gp_a);
printf(" \n    Alternator voltage regulation :\n    VR = %.2f percent \n",VR);

printf(" \n    Obtained VR value through scilab calculation is slightly different from textbook");
printf(" \n    because of non-approximation of Z_s,X_s and E_gp while calculating in scilab.\n");

printf(" \n f: Alternator efficiency at 0.8 lagging PF :\n    η_rated = %.1f percent\n",eta_rated);

printf(" \n g: L.F = %.4f\n",L_F);
printf(" \n    Max.Efficiency at 0.8 lagging PF :\    η_max = %.2f percent \n",eta_max );

printf(" \n h: Power developed by the alternator armature at rated load,unity PF :");
printf(" \n    P_d = %.f kW",P_d);
