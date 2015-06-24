// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 10 : SYNCHRONOUS MOTOR
// Example : 10.2

clc;clear; // clears the console and command history 

// Given data
kVA = 1200   // kVA ratings
V = 14*10^3  // supply voltage in V
R_r = 4.8    // per phase resistance in ohm
X_r = 35     // syncronous reactance in ohm
pf = 0.95    // leading power factor

// caclulations
phi = acosd(pf)
Z_s = R_r+%i*X_r           // impedance per phase ohm
I_a = kVA*10^3/(sqrt(3)*V) // armature current in A
E_r = I_a*Z_s              // resultant voltage due to impedance in V
V_t = V/sqrt(3)            // terminal voltage per phase in V
b = atand(X_r/R_r)         // beta value
E_f = sqrt(V_t^2+abs(E_r)^2-2*V_t*abs(E_r)*cosd(b-phi)) // excitation voltage per phase in V
teta = sind(64)
D = (E_r*teta/E_f)         // torque angle
delta = asind(abs(D))

// display the result  
disp("Example 10.2 solution"); 
printf(" \n Excitation voltage per phase \n E_f = %.2f V \n", E_f );
printf(" \n Torque angle at 0.95 power factor lagging \n delta = %.2f degree \n", delta );
