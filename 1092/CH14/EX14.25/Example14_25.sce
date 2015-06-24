// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-25

clear; clc; close; // Clear the work space and console.

// Given data
kVA_1 = 500 ; // Power rating of the transformer 1 in kVA
R_1_pu = 0.01 ; // per-unit value of resistance of the transformer 1
X_1_pu = 0.05 ; // per-unit value of reactance of the transformer 1
Z_1_pu = R_1_pu + %i*X_1_pu ; //per-unit value of impedance of the transformer 1

PF = 0.8 ; // lagging power factor
V_2 = 400 ; // Secondary voltage in volt
S_load = 750 ; // Increased system load in kVA

kVA_2 = 250 ; // Power rating of the transformer  2 in kVA
R_pu_2 = 0.015 ; // per-unit value of resistance of the transformer 2
X_pu_2 = 0.04 ; // per-unit value of reactance of the transformer 2

// smaller transformer secondary voltageis same as larger transformer

// Calculations
// Preliminary calculations
Z_pu_1 = R_pu_2 + %i*X_pu_2 ; // New transformer p.u. impedance

// Calculations
// case a
V_b1 = 400 ; // base voltage in volt
V_b2 = 400 ; // base voltage in volt
Z_pu_2 = (kVA_1/kVA_2)*(V_b1/V_b2)^2 * (Z_pu_1); // New transformer p.u impedance
Z_2_pu = Z_pu_2 ; //New transformer p.u impedance

// case b
cos_theta = PF ; // Power factor
sin_theta = sqrt( 1 - (cos_theta)^2 );
S_t_conjugate = (kVA_1 + kVA_2)*(cos_theta + %i*sin_theta); // kVA of total load

// case c
S_2_conjugate = S_t_conjugate * ( Z_1_pu /(Z_1_pu + Z_2_pu) ); // Portion of load carried by the smaller transformer in kVA
S_2_conjugate_m = abs(S_2_conjugate);//S_2_conjugate_m=magnitude of S_2_conjugate in kVA
S_2_conjugate_a = atan(imag(S_2_conjugate) /real(S_2_conjugate))*180/%pi;//S_2_conjugate_a=phase angle of S_2_conjugate in degrees

// case d
S_1_conjugate = S_t_conjugate * ( Z_2_pu/(Z_1_pu + Z_2_pu) ); // Portion of load carried by the original transformer in kVA
S_1_conjugate_m = abs(S_1_conjugate);//S_1_conjugate_m=magnitude of S_1_conjugate in kVA
S_1_conjugate_a = atan(imag(S_1_conjugate) /real(S_1_conjugate))*180/%pi;//S_1_conjugate_a=phase angle of S_1_conjugate in degrees

// case e
S_1 = S_1_conjugate_m ; 
S_b1 = kVA_1 ; // base power in kVA of trancsformer 1
LF1 = (S_1 / S_b1)*100 ; // Load fraction of the original transformer in percent

// case f
S_2 = S_2_conjugate_m ; 
S_b2 = kVA_2 ; // base power in kVA of trancsformer 2
LF2 = (S_2 / S_b2)*100 ; // Load fraction of the original transformer in percent

// Display the results
disp("Example 14-25 Solution : ");

printf(" \n a: New transformer p.u impedance :\n    Z_p.u.2 in p.u = ");disp(Z_pu_2);

printf(" \n b: kVA of total load :\n    S*_t in kVA = ");disp(S_t_conjugate);

printf(" \n c: Portion of load carried by the smaller transformer in kVA :");
printf(" \n    S*_2 in kVA =  ");disp(S_2_conjugate);
printf(" \n    S*_2 = %.1f <%.2f kVA (inductive load)\n",S_2_conjugate_m,S_2_conjugate_a);

printf(" \n d: Portion of load carried by the original transformer in kVA :");
printf(" \n    S*_2 in kVA = ");disp(S_1_conjugate);
printf(" \n    S*_2 = %.1f <%.2f kVA (inductive load)\n",S_1_conjugate_m,S_1_conjugate_a);

printf(" \n e: Load fraction of the original transformer :\n    L.F.1 = %.1f percent\n",LF1);

printf(" \n f: Load fraction of the original transformer :\n    L.F.2 = %.1f percent\n",LF2);

printf(" \n g: Yes. Reduce the no-load voltage of the new transformer to some value ");
printf(" \n    below that of its present value so that its share of the load is reduced.");




