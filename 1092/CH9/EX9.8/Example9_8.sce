// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-8

clear; clc; close; // Clear the work space and console.

// Given data  (Exs.9-5 through 9-7)
P = 8 ; // Number of poles in the SCIM
f = 60 ; // Frequency in Hz
R_r = 0.3 ; // Rotor resistance per phase in ohm
X_lr = 1.08 ; // Locked rotor reactance in ohm
S_r = 650 ; // Speed in rpm at which motor stalls
E_lr = 112 ; // Induced voltage per phase

disp("Example 9-8 : "); 
printf(" \n The new and the original conditions may be summarized in the following table\n");
printf(" \n    _________________________________________________________");
printf(" \n    Condition \t R_r \t\t X_lr \t\t T_starting ");
printf(" \n              \t ohm \t\t ohm  \t ");
printf(" \n    _________________________________________________________");
printf(" \n    Original : \t %.1f \t\t %.2f \t\t T_o = 2*T_n ",R_r,X_lr);
printf(" \n    New      :\t(%.1f+R_x) \t %.2f \t\t T_n = 2*T_n ",R_r,X_lr);
printf(" \n    _________________________________________________________\n");

// Calculating
// case a
// Neglecting constant Kn_t ,since we are equating torque T_o and T_n
T_o = ( R_r / ((R_r)^2 + (X_lr)^2) ); // Original torque

// T_o = K_n_t*( 0.3 / ((0.3)^2 + (1.08)^2) );
// T_n = K_n_t*( 0.3 + R_x) / ( (0.3 + R_x)^2  + (1.08)^2 );
// T_n = T_o
// Simplyifing yields
// 0.3 + R_x = 0.24[(0.3+R_x)^2 + (1.08)^2]
// Expanding and combining the terms yields
// 0.24*(R_x)^2 - 0.856*R_x = 0
// This is a quadratic equation having two roots,which may be factored as
// R_x*(0.24*R_x - 0.856) = 0,yielding
// R_x = 0 and R_x = 0.856/0,24 = 3.57
R_x = poly(0,'R_x'); // Defining a polynomial with variable 'R_x' with  root at 0
a = 0.24 ; // coefficient of x^2
b = -0.856 ; // coefficient of x
c = 0 ; // constant

// Roots of p
R_x1 = ( -b + sqrt (b^2 -4*a*c ) ) /(2* a);
R_x2=( -b - sqrt (b^2 -4*a*c ) ) /(2* a);
// Consider R_x>0 value, 
R_x = R_x1;

R_T = R_r + R_x ; // Total rotor resistance in ohm

// case b
Z_T = R_T + %i*X_lr ; // Total impedance in ohm
Z_T_m = abs(Z_T);//Z_T_m = magnitude of Z_T in ohm
Z_T_a = atan(imag(Z_T) /real(Z_T))*180/%pi;//Z_T_a=phase angle of Z_T in degrees

cos_theta = R_T / Z_T_m ; // Rotor PF that will produce the same starting torque

// case c
Z_r = Z_T_m ; // Impedance in ohm
I_r = E_lr / Z_r ; // Starting current in A

// Display the results
disp("Solution : "); 

printf(" \n a: T_o = %.2f * K_n_t ",T_o );
printf(" \n    T_n = %.2f * K_n_t \n",T_o );
printf(" \n    Simplyifing yields");
printf(" \n    0.3 + R_x = 0.24[(0.3+R_x)^2 + (1.08)^2]");
printf(" \n    Expanding and combining the terms yields");
printf(" \n    0.24*(R_x)^2 - 0.856*R_x = 0");
printf(" \n    This is a quadratic equation having two roots,which may be factored as");
printf(" \n    R_x*(0.24*R_x - 0.856) = 0,yielding");
printf(" \n    R_x = 0 ohm and R_x = 0.856/0.24 = 3.57 ohm\n\n    This proves that ");
printf(" \n    Original torque is produced with an external resistance of either ");
printf(" \n    zero or 12 times the origianl rotor resistance.Therefore,\n");
printf(" \n    R_T = R_r + R_x = %.2f ohm \n",R_T);

printf(" \n b: Z_T in ohm = ");disp(Z_T);
printf(" \n    Z_T = %.2f <%.1f ohm ",Z_T_m,Z_T_a);
printf(" \n    cosӨ = R_T / Z_T = %.3f or \n    cosӨ = cosd(%.1f) = %.3f\n",cos_theta,Z_T_a,cosd(Z_T_a));

printf(" \n c: I_r = E_lr / Z_r = %.f A \n\n    This proves that,",I_r);
printf(" \n    Rotor current at starting is now only 28 percent of the original");
printf(" \n    starting current in part(a) of Ex.9-7");
