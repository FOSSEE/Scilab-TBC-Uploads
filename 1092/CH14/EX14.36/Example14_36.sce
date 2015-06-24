// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-36

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase,3-wire Δ-connected transformer  shown in Fig.14-42
V_L = 33 ; // line voltage in kV

f = 60 ;// frequency in Hz

// power factor
PF1 = 1; // unity power factor for I_AB
PF2 = 0.7; // 0.7 lagging power factor for I_BC
PF3 = 0.9; // 0.9 lagging power factor for I_CA

// Calculations
V_AB = V_L*exp(%i*(0)*(%pi/180)) ; // line voltage in kV taken as reference voltage

V_BC = V_L*exp(%i*(-120)*(%pi/180)) ; // line voltage in kV
V_BC_m = abs(V_BC);//V_BC_m=magnitude of V_BC in kV
V_BC_a = atan(imag(V_BC) /real(V_BC))*180/%pi - 180 ;//V_BC_a=phase angle of V_BC in degrees
// 180 is subtracted from I_BC_a to make it similar to textbook angle

V_CA = V_L*exp(%i*(-240)*(%pi/180)) ; // line voltage in kV
V_CA_m = abs(V_CA);//V_CA_m=magnitude of V_CA in kV
V_CA_a = atan(imag(V_CA) /real(V_CA))*180/%pi - 180 ;//V_CA_a=phase angle of V_CA in degrees
// 180 is subtracted from I_BC_a to make it similar to textbook angle

theta_1 = acosd(PF1); // PF1 angle
theta_2 = acosd(PF2); // PF2 angle
theta_3 = acosd(PF3); // PF3 angle


I_AB = 10*exp(%i*(theta_1)*(%pi/180)) ; // I_AB current in kA
I_AB_m = abs(I_AB);//I_AB_m=magnitude of I_AB in kA
I_AB_a = atan(imag(I_AB) /real(I_AB))*180/%pi;//I_AB_a=phase angle of I_AB in degrees

I_BC = 15*exp(%i*(-120 - theta_2)*(%pi/180)) ; // I_BC current in kA
I_BC_m = abs(I_BC);//I_BC_m=magnitude of I_BC in kA
I_BC_a = atan(imag(I_BC) /real(I_BC))*180/%pi - 180;//I_BC_a=phase angle of I_BC in degrees
// 180 is subtracted from I_BC_a to make it similar to textbook angle

I_CA = 12*exp(%i*(-240 + theta_3)*(%pi/180)) ; // I_CA current in kA
I_CA_m = abs(I_CA);//I_CA_m=magnitude of I_CA in kA
I_CA_a = 180 + atan(imag(I_CA) /real(I_CA))*180/%pi;//I_CA_a=phase angle of I_CA in degrees
// 180 is added to I_BC_a to make it similar to textbook angle

// case a
I_AC = -I_CA ;
I_A = I_AB + I_AC ; // phase current in kA
I_A_m = abs(I_A);//I_A_m=magnitude of I_A in kA
I_A_a = atan(imag(I_A) /real(I_A))*180/%pi;//I_A_a=phase angle of I_A in degrees

// case b
I_BA = -I_AB ;
I_B = I_BC + I_BA ; // phase current in kA
I_B_m = abs(I_B);//I_B_m=magnitude of I_B in kA
I_B_a = atan(imag(I_B) /real(I_B))*180/%pi;//I_B_a=phase angle of I_B in degrees

// case c
I_CB = -I_BC ;
I_C = I_CA + I_CB ; // phase current in kA
I_C_m = abs(I_C);//I_C_m=magnitude of I_C in kA
I_C_a = atan(imag(I_C) /real(I_C))*180/%pi;//I_C_a=phase angle of I_C in degrees

// case d
phasor_sum = I_A + I_B + I_C ;


// Display the results
disp("Example 14-36 Solution : ");

printf(" \n We must first write each of the phase currents in polar form. ");
printf(" \n Since reference voltage,V_AB is assumed as 33 <0 kV, we may write\n");

printf(" \n I_AB = %d <%d kA (unity PF),\n",I_AB_m,I_AB_a);
printf(" \n But I_BC lags V_BC, which is %.f <%d kV",V_BC_m,V_BC_a);
printf(" \n by θ = acosd(%.1f) = -%.2f lag, and consequently",PF2,theta_2);
printf(" \n I_BC = %.f <%.2f kA \n",I_BC_m,I_BC_a);

printf(" \n Similarly,I_CA leads V_CA = %.f <%.f kV",V_CA_m,V_CA_a);
printf(" \n by θ = acosd(%.1f) = %.2f lead, and consequently",PF3,theta_3);
printf(" \n I_CA = %d <%.2f kA \n",I_CA_m,I_CA_a);

printf(" \n Writing three phase currents in comples form yields.\n");
printf(" \n I_AB in kA = ");disp(I_AB);
printf(" \n I_BC in kA = ");disp(I_BC);
printf(" \n I_CA in kA = ");disp(I_CA);

printf(" \n From conventional three phase theory for unbalanced Δ-connected loads");
printf(" \n and from Fig.14-42, we have\n");

printf(" \n a: I_A in kA = ");disp(I_A);
printf(" \n    I_A = %.2f <%.2f kA \n",I_A_m,I_A_a);

printf(" \n b: I_B in kA = ");disp(I_B);
printf(" \n    I_B = %.2f <%.2f kA \n",I_B_m,I_B_a);

printf(" \n c: I_C in kA = ");disp(I_C);
printf(" \n    I_C = %.2f <%.2f kA \n",I_C_m,I_C_a);

printf(" \n d: Phasor sum of the line currents :");
printf(" \n    ΣI_L in kA = ");disp(phasor_sum);
