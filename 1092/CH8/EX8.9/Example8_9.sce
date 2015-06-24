// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-9

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 2000 ; // Total power consumed by a factory in kW 
cos_theta = 0.6 ; // 0.6  power factor at which power is consumed 
sin_theta = sqrt( 1 - (cos_theta)^2 );
V = 6000 ; // Line voltage in volt
// Synchronous capacitor is used to raise the overall PF to unity
P_loss_cap = 275 ; // Synchronous capacitor losses in kW

// Calculations
// case a
S_o_conjugate = P_o / cos_theta ; // apparent complex power in kW
jQ_o = S_o_conjugate * sin_theta ; // Original kilovars of lagging load

// case b
jQ_c = -jQ_o ; // Kilovars of correction needed to bring the PF to unity

// case c
R = P_loss_cap ; // Synchronous capacitor losses in kW
S_c_conjugate = R - %i*( abs(jQ_c) ) ; // kVA rating of the synchronous capacitor
S_c_conjugate_m = abs(S_c_conjugate);//S_c_conjugate_m = magnitude of S_c_conjugate in kVA
S_c_conjugate_a = atan(imag(S_c_conjugate) /real(S_c_conjugate))*180/%pi;
//S_c_conjugate_a=phase angle of S_c_conjugate in degrees 
PF = cosd(S_c_conjugate_a); // Power factor of the synchronous capacitor

// case d
I_o = S_o_conjugate * 1000 / V ; // Original current drawn from the mains in A


// case e
P_f = P_o + P_loss_cap ; // Total power in kW
S_f = P_f ; // Total apparent power in kW
S_f_m = abs(S_f);//S_f_m = magnitude of S_f in A
S_f_a = atan(imag(S_f) /real(S_f))*180/%pi;//S_f_a=phase angle of S_f in degrees 

I_f = S_f * 1000 / V ; // Final current drawn from the mains after correction in A

// Display the results
disp("Example 8-9 Solution : ");
printf(" \n a: S*o = %d kVA \n", S_o_conjugate );
printf(" \n    +jQo in kvar = ");disp(%i*jQ_o);

printf(" \n b: -jQc in kvar =  " );disp(%i*jQ_c);

printf(" \n c: S*c in kVA = ");disp(S_c_conjugate);
printf(" \n    S*c = %.f <%.1f kVA \n", S_c_conjugate_m , S_c_conjugate_a );
printf(" \n    PF = %.3f leading \n",PF );

printf(" \n d: I_o = %.1f A \n ",I_o );

printf(" \n e: S_f in A = ");disp(S_f);
printf(" \n    S_f = %d <%d kVA \n" , S_f_m , S_f_a );
printf(" \n    I_f = %.1f A \n ", I_f);

printf(" \n f: See Fig.8-25.");
