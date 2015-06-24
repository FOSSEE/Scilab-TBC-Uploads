// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-22

clear; clc; close; // Clear the work space and console.

// Given data
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
P = 20 ; // Power rating of the transformer in kVA
// Short circuit test data
P_sc = 250 ; // Power measured in W
V_sc = 50 ; // Short circuit voltage in volt
I_sc = 8.7 ; // Short circuit current in A

// Calculations
// case a
V_1b = V_1 ; // base voltage in volt
Z_eq_pu = V_sc / V_1 ;

funcprot(0) ; // Use this to avoid the message "Warning : redefining function: beta "                   .
beta = acosd(P_sc/(V_sc*I_sc)); // angle in degrees

Zeq_pu = Z_eq_pu*exp(%i*(beta)*(%pi/180));
Zeq_pu_m = abs(Zeq_pu);//Zeq_pu_m=magnitude of Zeq_pu in p.u
Zeq_pu_a = atan(imag(Zeq_pu) /real(Zeq_pu))*180/%pi;//Zeq_pu_a=phase angle of Zeq_pu in degrees

// case b
// at unity PF
V_1_pu = 1*exp(%i*(0)*(%pi/180)) + 1*exp(%i*(0)*(%pi/180))*Z_eq_pu*exp(%i*(beta)*(%pi/180));
// RHS is written in exponential complex form and (%pi/180) is radians to degrees conversion factor
V_1_pu_m = abs(V_1_pu);//V_1_pu_m=magnitude of V_1_pu in volt
V_1_pu_a = atan(imag(V_1_pu) /real(V_1_pu))*180/%pi;//V_1_pu_a=phase angle of V_1_pu in degrees

// case c
// at 0.7 PF lagging
theta = acosd(0.7); // Power factor angle in degrees
V1_pu = 1*exp(%i*(0)*(%pi/180)) + 1*exp(%i*(-theta)*(%pi/180))*Z_eq_pu*exp(%i*(beta)*(%pi/180));
V1_pu_m = abs(V1_pu);//V1_pu_m=magnitude of V1_pu in volt
V1_pu_a = atan(imag(V1_pu) /real(V1_pu))*180/%pi;//V1_pu_a=phase angle of V1_pu in degrees

// case d
VR_unity_PF = V_1_pu_m - 1 ; // voltage regulation at unity PF 

// case e
VR_lag_PF = V1_pu_m - 1 ; // voltage regulation at 0.7 lagging PF 

// Display the results
disp("Example 14-22 Solution : ");

printf(" \n a: Z_eq(pu) = %.5f p.u \n",Z_eq_pu);
printf(" \n    β = %.f degrees \n",beta);
printf(" \n    Z_eq(pu) <β = ");disp(Zeq_pu);
printf(" \n    Z_eq(pu) <β = %.5f <%.f p.u \n ",Zeq_pu_m,Zeq_pu_a);

printf(" \n b: |V_1(pu)| = ");disp(V_1_pu);
printf(" \n    |V_1(pu)| = %.4f <%.2f V \n ",V_1_pu_m , V_1_pu_a );

printf(" \n c: |V_1(pu)| = ");disp(V1_pu);
printf(" \n    |V_1(pu)| = %.4f <%.2f V \n ",V1_pu_m , V1_pu_a );

printf(" \n d: Voltage regulation at unity PF :\n    VR = %f ",VR_unity_PF);
printf(" \n    VR = %.3f percent \n ",100*VR_unity_PF);

printf(" \n e: Voltage regulation at 0.7 lagging PF :\n    VR = %f ",VR_lag_PF);
printf(" \n    VR = %.2f percent \n ",100*VR_lag_PF);

printf(" \n f: VRs as found by p.u method are essentially the same as those found ");
printf(" \n    in Exs.14-17 and 14-19 using the same data, for the same transformer, ");
printf(" \n    but with much less effort.");
