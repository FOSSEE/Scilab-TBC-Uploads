// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 10 : SYNCHRONOUS MOTOR
// Example : 10.3

clc;clear; // clears the console and command history 

// Given data
V = 440          // supply voltage in V
R_a = 1.5        // per phase resistance in ohm
X_a = 8          // syncronous reactance in ohm
P = 4            // number of poles
f = 50           // supply frequency in Hz
pf = 0.9         // leading power factor
I_a = 50         // armature current in A

// caclulations
V_t = V/sqrt(3)      // terminal voltage per phase in V
phi = acosd(pf)      // angle in degree
Z_s = R_a+%i*X_a     // impedance per phase ohm
E_r = I_a*abs(Z_s)        // resultant voltage due to impedance in V
bet = atand(X_a/R_a)
E_f = sqrt(V_t^2+E_r^2-2*V_t*E_r*cosd(bet+phi)) // excitation voltage per phase in V
P_dm = (((E_f*V_t)/Z_s)-((E_f^2*R_a)/Z_s^2))          // maximum power per phase in W

// display the result  
disp("Example 10.3 solution"); 
printf(" \n Maximum power per phase \n P_dm = %.2f W \n", P_dm );
printf(" \n In textbook solution they took E_f = 513.5V instead of 533.33V");
