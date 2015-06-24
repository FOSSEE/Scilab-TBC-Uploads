// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 10: SINGLE-PHASE MOTORS
// Example 10-3

clear; clc; close; // Clear the work space and console.

// Given data
hp = 0.25 ; // Power rating of the single-phase motor in hp
V = 110 ; // Voltage rating of the single-phase motor in V
I_sw = 4 ; // Starting winding current
phi_I_sw = 15 ; // Phase angle in degrees by which I_sw lags behind V
I_rw = 6 ; // Running winding current
phi_I_rw = 40 ; // Phase angle in degrees by which I_rw lags behind V 
// when the capacitor is added to the auxiliary starting winding of the motor
// of Ex.10-1 , I_s leads V by 42 degrees so,
phi_I_sw_new = 42 ; // I_s leads V by phi_I_sw_new degrees

// Calculations
// case a
I_s = I_sw * exp( %i * phi_I_sw_new*(%pi/180) ); //  starting current in A
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
theta = ( phi_I_rw - (-phi_I_sw_new) ); 
sin_theta = sind(theta);// Sine of the angle between the 
// starting and running currents 
phase = 25 ; // Phase angle between the starting and running 
// currents in degrees (from Ex.10-1)

// case c
// Ratio of starting torques (capacitor to resistance start)
ratio_T = sind(theta) / sind(phase); 

// Display the results
disp("Example 10-3 Solution : ");
printf(" \n a: I_s = %d <%d A ", I_sw , phi_I_sw_new );
printf(" \n    I_s in A =  " );disp(I_s);
printf(" \n    I_r = %d <-%d A ", I_rw , phi_I_rw );
printf(" \n    I_r in A =  " );disp(I_r);
printf(" \n    I_t in A =  " );disp(I_t);
printf(" \n    I_t = %.2f <%.1f A ", I_t_m , I_t_a );
printf(" \n\n    Power factor = cos(%.1f) = %.3f lagging \n", I_t_a ,Power_factor);

printf(" \n b: sin(%d - (-%d)) = sin(%d) = %.4f\n",phi_I_rw,phi_I_sw_new,theta,sin_theta);

printf(" \n c: The steady state starting current has been reduced from");
printf(" \n    9.77 <-30 A to %.2f <%.1f A ,",I_t_m ,I_t_a );
printf(" \n    and the power factor has risen from 0.866 lagging to %.3f.",Power_factor);
printf(" \n    The motor develops maximum starting torque(T = K*I_b*ϕ*cosθ) with");
printf(" \n    minimum starting current.The ratio of starting torques ");
printf(" \n    (capacitor to resistance start) is : \n");
printf(" \n    T_cs/T_rs = sin(%d)/sin(%d) = %.3f",theta,phase,ratio_T)
