// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-26

clear; clc; close; // Clear the work space and console.

// Given data(From Ex.14-25)
kVA_1 = 500 ; // Power rating of the transformer 1 in kVA
R_1_pu = 0.01 ; // per-unit value of resistance of the transformer 1
X_1_pu = 0.05 ; // per-unit value of reactance of the transformer 1
Z_1_pu = R_1_pu + %i*X_1_pu ; //per-unit value of impedance of the transformer 1

PF = 0.8 ; // lagging power factor
V = 400 ; // Secondary voltage in volt
S_load = 750 ; // Increased system load in kVA

kVA_2 = 250 ; // Power rating of the transformer  2 in kVA
R_pu_2 = 0.015 ; // per-unit value of resistance of the transformer 2
X_pu_2 = 0.04 ; // per-unit value of reactance of the transformer 2

// smaller transformer secondary voltageis same as larger transformer

// Calculations
// Preliminary calculations
Z_pu_1 = R_pu_2 + %i*X_pu_2 ; // New transformer p.u. impedance

// case a
V_b = V ; // (given)

//case b
S_b =500*1000 ; // base power in VA
I_b = S_b / V_b ; // base current in A

// case c
Z_b = V^2/S_b ; // Base impedance in ohm

// case d
Z_1 = Z_b * Z_1_pu * 1000 ; // Actual impedance of larger transformer in milli-ohm
Z_1_m = abs(Z_1);//Z_1_m=magnitude of Z_1 in ohm
Z_1_a = atan(imag(Z_1) /real(Z_1))*180/%pi;//Z_1_a=phase angle of Z_1 in degrees

// case e
V_b1 = V_b ; // base voltage in volt
V_b2 = V_b ; // base voltage in volt
Z_pu_2 = (kVA_1/kVA_2)*(V_b1/V_b2)^2 * (Z_pu_1); // New transformer p.u impedance
Z_2_pu = Z_pu_2 ; //New transformer p.u impedance

Z_2 = Z_b * Z_2_pu*1000 ; // Actual impedance of smaller transformer in milli-ohm
Z_2_m = abs(Z_2);//Z_2_m=magnitude of Z_2 in ohm
Z_2_a = atan(imag(Z_2) /real(Z_2))*180/%pi;//Z_2_a=phase angle of Z_2 in degrees

// case f
cos_theta = 0.8 ; // Power factor
sin_theta = sqrt( 1 - (cos_theta)^2 );
S_T = (kVA_1 + kVA_2)*(cos_theta - %i*sin_theta); // kVA of total load

I_T = S_T*1000 / V_b ; // Total current in A

I_1 = I_T*(Z_2/(Z_1 + Z_2)); // Actual current delivered by larger transformer in A
I_1_m = abs(I_1);//I_1_m=magnitude of I_1 in A
I_1_a = atan(imag(I_1) /real(I_1))*180/%pi;//I_1_a=phase angle of I_1 in degrees

// case g
I_2 = I_T*(Z_1/(Z_1 + Z_2)); // Actual current delivered by larger transformer in A
I_2_m = abs(I_2);//I_2_m=magnitude of I_2 in A
I_2_a = atan(imag(I_2) /real(I_2))*180/%pi;//I_2_a=phase angle of I_2 in degrees

// case h
Z1 = Z_1/1000 ; // Z_1 in ohm
E_1 = I_1*Z1 + V_b ; // No-load voltage of larger Tr. in volt
E_1_m = abs(E_1);//E_1_m=magnitude of E_1 in volt
E_1_a = atan(imag(E_1) /real(E_1))*180/%pi;//E_1_a=phase angle of E_1 in degrees


// case i
Z2 = Z_2/1000 ; // Z_2 in ohm
E_2 = I_2*Z2 + V_b ; // No-load voltage of smaller Tr. in volt
E_2_m = abs(E_2);//E_2_m=magnitude of E_2 in volt
E_2_a = atan(imag(E_2) /real(E_2))*180/%pi;//E_2_a=phase angle of E_2 in degrees

// Display the results
disp("Example 14-26 Solution : ");

printf(" \n a: Base voltage :\n    V_b = %d <0 V (given)\n",V_b);

printf(" \n b: Base current :\n    I_b = %.2f A \n",I_b);

printf(" \n c: Base impedance :\n    Z_b = %.2f ohm\n",Z_b);

printf(" \n d: Actual impedance of larger transformer :\n    Z_1 in mΩ = \n");disp(Z_1);
printf(" \n    Z_1 = %.2f <%.2f mΩ \n ",Z_1_m,Z_1_a);

printf(" \n e: Actual impedance of smaller transformer :\n    Z_1 in mΩ = \n");disp(Z_2);
printf(" \n    Z_1 = %.2f <%.2f mΩ \n ",Z_2_m,Z_2_a);

printf(" \n f: Actual current delivered by larger transformer :\n    I_1 in A = ");disp(I_1);
printf(" \n    I_1 = %.2f <%.2f A \n ",I_1_m,I_1_a);

printf(" \n g: Actual current delivered by smaller transformer :\n    I_2 in A = ");disp(I_2);
printf(" \n    I_1 = %.2f <%.2f A \n ",I_2_m,I_2_a);

printf(" \n h: No-load voltage of larger Tr :\n    E_1 in volt = ");disp(E_1);
printf(" \n    E_1 = %.2f <%.2f V \n ",E_1_m,E_1_a);

printf(" \n i: No-load voltage of smaller Tr :\n    E_2 in volt = ");disp(E_2);
printf(" \n    E_1 = %.2f <%.2f V \n ",E_2_m,E_2_a);
