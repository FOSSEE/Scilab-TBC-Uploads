// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-27

clear; clc; close; // Clear the work space and console.

// Given data
// From diagram in fig.14-23a
P_L = 14400 ; // Load output power in W
V_L = 120 ; // Load voltage in volt
V_b1 = 120 ; // base voltage at point 1 in volt
V_b2 = 600 ; // base voltage at point 2 in volt
V_b3 = 120 ; // base voltage at point 3 in volt
S_b3 = 14.4 ; // base power in kVA
X_2 = %i*0.25 ; // reactance in p.u
X_1 = %i*0.2 ; // reactance in p.u
I_L = 120 ; // Load current in A

// Calculations
// case a
R_L = P_L / (V_L^2); // Resistance of the load in ohm

// case b
Z_bL = (V_b3^2)/(S_b3*1000); // Base impedance in ohm

// case c
Z_L_pu = R_L / Z_bL ; // per unit load impedance 

// case d
Z_2_pu = X_2 ; // per unit impedance of Tr.2

// case e
Z_1_pu = X_1 ; // per unit impedance of Tr.1

// case g
I_bL = (S_b3*1000)/V_b3 ; // Base current in load in A

// case h
I_L_pu = I_L / I_bL ; // per unit load current

// case i
V_R_pu = I_L_pu * Z_L_pu ; // per unit voltage across load 

// case j
I_S_pu = I_L_pu ; //per unit current of source
Z_T_pu = Z_L_pu + Z_1_pu + Z_2_pu ; // Total p.u impedance
V_S_pu = I_S_pu * Z_T_pu ; // per unit voltage of source
V_S_pu_m = abs(V_S_pu);//V_S_pu_m=magnitude of V_S_pu in p.u
V_S_pu_a = atan(imag(V_S_pu) /real(V_S_pu))*180/%pi;//V_S_pu_a=phase angle of V_S_pu in degrees

// case k
V_S = V_S_pu * V_b1 ; // Actual voltage across source in volt
V_S_m = abs(V_S);//V_S_m=magnitude of V_S in volt
V_S_a = atan(imag(V_S) /real(V_S))*180/%pi;//V_S_a=phase angle of V_S in degrees


// case l
I_x_pu = I_L_pu ; // p.u current at point x
Z_x_pu = Z_L_pu + Z_2_pu ; // p.u impedance at point x 
V_x_pu = I_x_pu * Z_x_pu ; // p.u voltage at point x

// case m
V_x = V_x_pu * V_b2 ; // Actual voltage at point x in volt
V_x_m = abs(V_x);//V_x_m=magnitude of V_x in volt
V_x_a = atan(imag(V_x) /real(V_x))*180/%pi;//V_x_a=phase angle of V_x in degrees


// Display the results
disp("Example 14-27 Solution : ");

printf(" \n a: Resistance of the load :\n    R_L = %d Ω \n",R_L);

printf(" \n b: Base impedance :\n    Z_bL = %d Ω \n",Z_bL);

printf(" \n c: per unit load impedance :\n    Z_L(pu)  = ");disp(Z_L_pu);

printf(" \n d: per unit impedance of Tr.2 :\n    Z_2(pu) = ");disp(Z_2_pu);

printf(" \n e: per unit impedance of Tr.1 :\n    Z_1(pu)  = ");disp(Z_1_pu);

printf(" \n f: See Fig.14-23b \n");

printf(" \n g: Base current in load :\n    I_bL = %d A (resistive)\n",I_bL);

printf(" \n h: per unit load current :\n    I_L_pu = ");disp(I_L_pu);

printf(" \n i: per unit voltage across load :\n    V_R_pu");disp(V_R_pu);

printf(" \n j: per unit voltage of source :\n    V_S_pu = ");disp(V_S_pu);
printf(" \n    V_S_pu = %.3f <%.2f p.u \n",V_S_pu_m,V_S_pu_a);

printf(" \n k: Actual voltage across source :\n    V_S in volt = ");disp(V_S);
printf(" \n    V_S = %.1f <%.2f V \n",V_S_m,V_S_a);

printf(" \n l: p.u voltage at point x :\n    V_x(pu) = ");disp(V_x_pu);

printf(" \n m: Actual voltage at point x  :\n    V_x in volt = ");disp(V_x);
printf(" \n    V_S = %.1f <%.2f V \n",V_x_m,V_x_a);
