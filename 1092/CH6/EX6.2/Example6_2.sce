// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 6: AC DYNAMO VOLTAGE RELATIONS-ALTERNATORS
// Example 6-2

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 1000 ; // kVA rating of the 3-phase alternator 
V_L = 4600 ; // Rated line voltage in volt
// 3-phase, Y-connected alternator
R_a = 2 ; // Armature resistance in ohm per phase
X_s = 20 ; // Synchronous armature reactance in ohm per phase
cos_theta_a = 0.75 ; // 0.75 PF leading (case a)
cos_theta_b = 0.40 ; // 0.40 PF leading (case b)
sin_theta_a = sqrt( 1 - (cos_theta_a)^2 ); // (case a)
sin_theta_b = sqrt( 1 - (cos_theta_b)^2 ); // (case b)

// Calculations
V_P = V_L / sqrt(3) ; // Phase voltage in volt
I_P = ( kVA * 1000 ) / ( 3*V_P ) ; // Phase current in A
I_a  = I_P ; // Armature current in A

// a: At 0.75 PF leading
E_g_a = ( V_P*cos_theta_a + I_a * R_a ) + %i*( V_P*sin_theta_a - I_a*X_s);
// Full-load generated voltage per-phase (case a)
E_g_a_m=abs(E_g_a);//E_g_a_m=magnitude of E_g_a in volt
E_g_a_a=atan(imag(E_g_a) /real(E_g_a))*180/%pi;//E_g_a_a=phase angle of E_g_a in degrees

// b: At 0.40 PF leading
E_g_b = ( V_P*cos_theta_b + I_a * R_a ) + %i*( V_P*sin_theta_b - I_a*X_s );
// Full-load generated voltage per-phase (case b )
E_g_b_m=abs(E_g_b);//E_g_b_m=magnitude of E_g_b in volt
E_g_b_a=atan(imag(E_g_b) /real(E_g_b))*180/%pi;//E_g_b_a=phase angle of E_g_b in degrees


// Display the results
disp("Example 6-2 Solution : ");
printf("\n root 3 value is taken as %f , so slight variations in the answer.", sqrt(3));
printf("\n\n a: 0.75 PF leading, \n ");
printf("\n     Rectangular form :\n   E_g = "); disp(E_g_a);
printf("\n     Polar form :");
printf(" \n     E_g = %d <%.2f V/phase ", E_g_a_m , E_g_a_a );
printf(" \n     where %d is magnitude and %.2f is phase angle\n",E_g_a_m,E_g_a_a);

printf(" \n b: At 0.40 PF leading , \n ");
printf("\n     Rectangular form :\n   E_g = "); disp(E_g_b);
printf("\n     Polar form :");
printf(" \n     E_g = %d <%.2f V/phase ", E_g_b_m , E_g_b_a );
printf(" \n     where %d is magnitude and %.2f is phase angle\n",E_g_b_m,E_g_b_a);
