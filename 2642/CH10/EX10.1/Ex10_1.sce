// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 10 : SYNCHRONOUS MOTOR
// Example : 10.1

clc;clear; // clears the console and command history 

// Given data
V = 2.5*10^3 // supply voltage in V
R_r = 0.12   // per phase resistance in ohm
X_r = 3.2    // syncronous reactance in ohm
I_a = 185    // line current in A
pf = 0.8     // leading power factor

// caclulations
phi = acosd(pf)
V_t = V/sqrt(3)    // terminal voltage per phase in V
Z_s = R_r+%i*X_r   // impedance per phase ohm
beta = atand(X_r/R_r)
E_r = I_a*Z_s      // resultant voltage due to impedance in V
E_f = sqrt(V_t^2+abs(E_r)^2-2*V_t*abs(E_r)*cosd(beta+phi)) // excitation voltage per phase in V


// display the result  
disp("Example 10.1 solution"); 
printf(" \n Excitation voltage per phase \n E_f = %.2f V \n", E_f );

