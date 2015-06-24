// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 10: SINGLE-PHASE MOTORS
// Example 10-1

clear; clc; close; // Clear the work space and console.

// Given data
hp = 0.25 ; // Power rating of the single-phase motor in hp
V = 110 ; // Voltage rating of the single-phase motor in V
I_sw = 4 ; // Starting winding current
phi_I_sw = 15 ; // Phase angle in degrees by which I_sw lags behind V
I_rw = 6 ; // Running winding current
phi_I_rw = 40 ; // Phase angle in degrees by which I_rw lags behind V 

// Calculations
// case a
I_s = I_sw * exp( %i * -phi_I_sw*(%pi/180) ); //  starting current in A
// (%pi/180) for degrees to radians conversion of phase angle
I_s_m = abs(I_s);//I_s_m = magnitude of I_s in A
I_s_a = atan(imag(I_s) /real(I_s))*180/%pi;//I_s_a=phase angle of I_s in degrees

I_r = I_rw * exp( %i * -phi_I_rw*(%pi/180) ); //  running current in A
I_r_m = abs(I_r);//I_r_m = magnitude of I_r in A
I_r_a = atan(imag(I_r) /real(I_r))*180/%pi;//I_r_a=phase angle of I_r in degrees

I_t = I_s + I_r ; // Total starting current in A
I_t_m = abs(I_t);//I_t_m = magnitude of I_t in A
I_t_a = atan(imag(I_t) /real(I_t))*180/%pi;//I_t_a=phase angle of I_t in degrees
Power_factor = cosd(I_t_a); // Power factor

// case b
Is_cos_theta = real(I_s); // Component of the starting winding current in phase 
// with the supply voltage in  A

// case c
Ir_sin_theta = imag(I_r); // Component of the running winding current that lags
// the supply voltage by 90 degrees

// case d
phase = ( phi_I_rw - phi_I_sw ); // Phase angle between the starting and running 
// currents in degrees

// Display the results
disp("Example 10-1 Solution : ");
printf(" \n a: I_s = %d <-%d A ", I_sw , phi_I_sw );
printf(" \n    I_s in A =  " );disp(I_s);
printf(" \n    I_r = %d <-%d A ", I_rw , phi_I_rw );
printf(" \n    I_r in A =  " );disp(I_r);
printf(" \n    I_t in A =  " );disp(I_t);
printf(" \n    I_t = %.2f <%d A ", I_t_m , I_t_a );
printf(" \n\n    Power factor = cos(%d) = %.3f lagging \n", I_t_a ,Power_factor);

printf(" \n b: Is*cosθ = %.2f A  (from a)\n ", Is_cos_theta );

printf(" \n c: (from a),\n    Ir*sinθ in A = " );disp(%i*Ir_sin_theta);

printf(" \n d: (θ_r - θ_s) = %d degrees ", phase);
