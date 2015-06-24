// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-19

clear; clc; close; // Clear the work space and console.

// Given data

kVA = 20 ; // kVA rating of the step-down transformer
S = 20000 ; // power rating of the step-down transformer in VA
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
Z_e1 = 5.75 ; // Equivalent impedance w.r.t HV side in ohm
R_e1 = 3.3 ; // Equivalent resistance w.r.t HV side in ohm
X_e1 = 4.71 ; // Equivalent reactance w.r.t HV side in ohm

// w.r.t HV side following is SC-test data
P1 = 250 ; // wattmeter reading in W
I1 = 8.7 ; // Input current in A
V1 = 50 ; // Input voltage in V

// Calculations
// case a
Z_e1_drop = V1 ; // High voltage impedance drop in volt

// case b
theta = acosd(R_e1/Z_e1) ; // PF angle in degrees

R_e1_drop = I1*Z_e1*cosd(theta) ; //HV-side equivalent resistance voltage drop in volt

// case c
X_e1_drop = I1*Z_e1*sind(theta) ; //HV-side equivalent reactance voltage drop in volt

// case d
// At unity PF
cos_theta1 = 1;
sin_theta1 = sqrt(1 - (cos_theta1)^2);

// Induced voltage when the transformer is delivering rated current to unity PF load
E_1 = (V_1*cos_theta1 + I1*R_e1) + %i*(V_1*sin_theta1 + I1*X_e1);
E_1_m = abs(E_1);//E_1_m=magnitude of E_1 in volt
E_1_a = atan(imag(E_1) /real(E_1))*180/%pi;//E_1_a=phase angle of E_1 in degrees

VR_unity_PF = ( (E_1_m - V_1) / V_1 ) * 100 ; // Transformer voltage regulation

// case e
// at 0.7 lagging PF
cos_theta_1 = 0.7 ; // lagging PF
sin_theta_1 = sqrt(1 - (cos_theta_1)^2);

// Induced voltage when the transformer is delivering rated current to unity PF load
E1 = (V_1*cos_theta_1 + I1*R_e1) + %i*(V_1*sin_theta_1 + I1*X_e1);
E1_m = abs(E1);//E1_m=magnitude of E1 in volt
E1_a = atan(imag(E1) /real(E1))*180/%pi;//E1_a=phase angle of E1 in degrees

VR_lag_PF = ( (E1_m - V_1) / V_1 ) * 100 ; // Transformer voltage regulation

// Display the results
disp("Example 14-19 Solution : ");

printf(" \n a: High voltage impedance drop :\n    I_1*Z_e1 = V_1 = %d\n",Z_e1_drop);

printf(" \n b: θ = %.f degrees \n",theta );
printf(" \n    High voltage resistance drop :\n    I_1*R_e1 = %.2f \n",R_e1_drop);

printf(" \n c: High voltage reactance drop :\n    I_1*X_e1 = %.2f \n",X_e1_drop);

printf(" \n d: At unity PF,\n    E_2 in volt = ");disp(E_1);
printf(" \n    E_2 = %.2f <%.2f V \n ",E_1_m , E_1_a);
printf(" \n    Voltage regulation at unity PF :\n    VR = %.2f percent ",VR_unity_PF );

printf(" \n\n e: At 0.7 lagging PF, \n    E_2 in volt = ");disp(E1);
printf(" \n    E_2 = %.2f <%.2f V \n ",E1_m , E1_a);
printf(" \n    Voltage regulation at 0.7 lagging PF :\n    VR = %.2f percent ",VR_lag_PF );
