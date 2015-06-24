// Scilab code Exa13.6 : : Page-601 (2011)
clc; clear; 
r = 1/2;            // Radius of the tube, metre
a = %pi*r^2;        // Area of the torus, square metre
V = 3*%pi*a;        // Volume of the torus, cubic metre
P = 10^-5*13.6e+3*9.81;   // Pressure of the gas, newton per square metre
C = 1200e-6;        // Capacitance, farad
v = 4e+4;            //  potential, volts
T_room = 293;        // Room temperature, kelvin
N_k = P*V/T_room;    // From gas equation
E = 1/2*C*v^2;       // Energy stored, joules
T_k = 1/6*E/(N_k*10);    // Temperature attained by thermonuclear device, kelvin
printf("\nThe temperature attained by thermonuclear device = %4.2e K", T_k);

// Result
// The temperature attained by thermonuclear device = 4.75e+005 K 

  