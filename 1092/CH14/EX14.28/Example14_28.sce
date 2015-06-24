// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-28

clear; clc; close; // Clear the work space and console.

// Given data
// From diagram in fig.14-24a
V_1 = 11 ; // Tr.1 voltage in kV
V_b1 = 11 ; // Base Tr.1 voltage in kV
S_1 = 50 ; // KVA rating of power for Tr.1
S_2 = 100 ; // KVA rating of power for Tr.2
Z_1_pu = %i*0.1 ; // per unit impedance of Tr.1
Z_2_pu = %i*0.1 ; // per unit impedance of Tr.2
V_b2 = 55 ; // Base Tr.2 voltage in kV
S_b = 100 ; // base power in kVA
PF = 0.8 ; // power factor of the Tr.s

Z_line = %i*200 ; // line impedance in ohm

V_L = 10 ;// Load voltage in kV
V_Lb3 = 11 ; // base line voltage at point 3

V_b3 = 11 ; // line voltage at point 3

P_L = 50 ; // Power rating of each Tr.s in kW
cos_theta_L = 0.8  ; // PF operation of each Tr.s

// Calculations
// case a
Z_T1 = Z_1_pu * (V_1/V_b1)^2 * (S_2/S_1); // p.u impedance of Tr.1

// case b
Z_T2 = Z_2_pu * (V_1/V_b3)^2 * (S_2/S_1); // p.u impedance of Tr.1

// case c
V_b = 55 ; // base voltage in volt
Z_b_line = (V_b^2)/S_b * 1000 ; // base line impedance in ohm
Z_line_pu = Z_line / Z_b_line ; // p.u impedance of the transmission line

// case d
V_L_pu = V_L / V_Lb3 ; // p.u voltage across load

// case e
//See Fig.14-24b

// case f
I_bL = S_b / V_b3 ; // base current in load in A

// case g
VL = 11 ; // load voltage in kV
cos_theta_L = 0.8 ; // power factor
I_L = P_L / (VL*cos_theta_L);
I_L_pu = I_L / I_bL ; // p.u load current
theta = acosd(0.8);
I_Lpu = I_L_pu*(cosd(theta) - %i*sind(theta)) ;// p.u current in complex form

// case h
Z_series_pu = Z_T1 + Z_line_pu + Z_T2 ; // p.u series impedance os the transmission line
V_S_pu = I_Lpu * Z_series_pu + V_L_pu ; // p.u source voltage
V_S_pu_m = abs(V_S_pu);//V_S_pu_m=magnitude of V_S_pu in p.u
V_S_pu_a = atan(imag(V_S_pu) /real(V_S_pu))*180/%pi;//V_S_pu_a=phase angle of V_S_pu in degrees

// case i
V_S = V_S_pu_m * V_b1 ; // Actual value of source voltage in kV
V_source = V_S*exp(%i*(V_S_pu_a)*(%pi/180)); // V_S in exponential form
V_source_m = abs(V_source);//V_source_m=magnitude of V_source in p.u
V_source_a = atan(imag(V_source) /real(V_source))*180/%pi;//V_source_a=phase angle of V_source in degrees


// Display the results
disp("Example 14-28 Solution : ");

printf(" \n a: p.u impedance of Tr.1 :\n    Z_T1 = ");disp(Z_T1);

printf(" \n b: p.u impedance of Tr.2 :\n    Z_T2 = ");disp(Z_T2);

printf(" \n c: base line impedance in ohm :\n    Z_b(line) = %d ohm \n",Z_b_line);
printf(" \n    p.u impedance of the transmission line :\n    Z(line)_pu = ");disp(Z_line_pu);

printf(" \n d: p.u voltage across load :\n    V_L_pu = ");disp(V_L_pu);

printf(" \n e: See Fig.14-24b \n");

printf(" \n f: base current in load :\n    I_bL = %.3f A \n",I_bL);

printf(" \n g: Load current :\n    I_L = %f A \n",I_L);
printf(" \n    p.u load current:\n    I_L_pu = %.3f at %.1f PF lagging \n",I_L_pu,PF);
printf(" \n    p.u current in complex form :\n    I_L_pu = ");disp(I_Lpu);

printf(" \n h: per unit voltage of source :\n    V_S_pu = ");disp(V_S_pu);
printf(" \n    V_S_pu = %.3f <%.2f p.u \n",V_S_pu_m,V_S_pu_a);

printf(" \n i: Actual voltage across source :\n    V_S in kV = ");disp(V_source);
printf(" \n    V_S = %.1f <%.2f kV \n",V_source_m,V_source_a);
