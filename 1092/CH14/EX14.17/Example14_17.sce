// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-17

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 20 ; // kVA rating of the step-down transformer
S = 20000 ; // power rating of the step-down transformer in VA
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt

// w.r.t HV side following is SC-test data
P1 = 250 ; // wattmeter reading in W
I1 = 8.7 ; // Input current in A
V1 = 50 ; // Input voltage in V

// Calculations
alpha = V_1 / V_2 ; // Transformation ratio
// case a
Z_e1 = V1 / I1 ; // Equivalent impedance w.r.t HV side in ohm

R_e1 = P1 / (I1)^2 ; // Equivalent resistance w.r.t HV side in ohm

theta = acosd(R_e1/Z_e1) ; // PF angle in degrees

X_e1 = Z_e1*sind(theta); // Equivalent reactance w.r.t HV side in ohm

// case b
Z_e2 = Z_e1 / (alpha)^2 ; // Equivalent impedance w.r.t LV side in ohm

R_e2 = R_e1 / (alpha)^2 ; // Equivalent resistance w.r.t LV side in ohm

X_e2 = Z_e2*sind(theta); // Equivalent reactance w.r.t LV side in ohm

// case c
I_2 = S / V_2 ; // Rated secondary load current in A

R_e2_drop = I_2 * R_e2 ; // Full-load equivalent resistance voltage drop in volt
X_e2_drop = I_2 * X_e2 ; // Full-load equivalent reactance voltage drop in volt

// At unity PF
cos_theta2 = 1;
sin_theta2 = sqrt(1 - (cos_theta2)^2);

// Induced voltage when the transformer is delivering rated current to unity PF load
E_2 = (V_2*cos_theta2 + I_2*R_e2) + %i*(V_2*sin_theta2 + I_2*X_e2);
E_2_m = abs(E_2);//E_2_m=magnitude of E_2 in volt
E_2_a = atan(imag(E_2) /real(E_2))*180/%pi;//E_2_a=phase angle of E_2 in degrees

VR_unity_PF = ( (E_2_m - V_2) / V_2 ) * 100 ; // Transformer voltage regulation

// case d
// at 0.7 lagging PF
cos_theta_2 = 0.7 ; // lagging PF
sin_theta_2 = sqrt(1 - (cos_theta_2)^2);

// Induced voltage when the transformer is delivering rated current to unity PF load
E2 = (V_2*cos_theta_2 + I_2*R_e2) + %i*(V_2*sin_theta_2 + I_2*X_e2);
E2_m = abs(E2);//E2_m=magnitude of E2 in volt
E2_a = atan(imag(E2) /real(E2))*180/%pi;//E2_a=phase angle of E2 in degrees

VR_lag_PF = ( (E2_m - V_2) / V_2 ) * 100 ; // Transformer voltage regulation

// Display the results
disp("Example 14-17 Solution : ");

printf(" \n a: Equivalent impedance w.r.t HV side :\n    Z_e1 = %.2f Ω \n",Z_e1);
printf(" \n    Equivalent resistance w.r.t HV side :\n    R_e1 = %.1f Ω \n",R_e1);
printf(" \n    θ = %.f degrees \n",theta );
printf(" \n    Equivalent reactance w.r.t HV side :\n    X_e1 = %.2f \n",X_e1);

printf(" \n b: Equivalent impedance w.r.t LV side :");
printf(" \n    Z_e2 = %f Ω = %.2f mΩ \n",Z_e2 ,Z_e2*1000);
printf(" \n    Equivalent resistance w.r.t LV side :\n    R_e2 = %f Ω \n",R_e2);
printf(" \n    R_e2 = %f Ω = %.2f mΩ \n",R_e2,R_e2*1000);
printf(" \n    Equivalent reactance w.r.t LV side :\n    X_e2 = %f Ω \n",X_e2);
printf(" \n    X_e2 = %f Ω = %.2f mΩ \n",X_e2,X_e2*1000);

printf(" \n c: Rated secondary load current :\n    I_2 = %.f A\n",I_2);
printf(" \n    I_2*R_c2 = %.2f V \n", R_e2_drop );
printf(" \n    I_2*X_c2 = %.2f V \n", X_e2_drop );
printf(" \n    At unity PF,\n    E_2 in volt = ");disp(E_2);
printf(" \n    E_2 = %.2f <%.2f V \n ",E_2_m , E_2_a);
printf(" \n    Voltage regulation at unity PF :\n    VR = %.2f percent ",VR_unity_PF );

printf(" \n\n d: At 0.7 lagging PF, \n    E_2 in volt = ");disp(E2);
printf(" \n    E_2 = %.2f <%.2f V \n ",E2_m , E2_a);
printf(" \n    Voltage regulation at 0.7 lagging PF :\n    VR = %.2f percent ",VR_lag_PF );



