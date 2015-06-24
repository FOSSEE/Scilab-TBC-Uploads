// Example2_6_pg76.sce
// To find branch currents and voltages
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 76


clear; clc; close;

// Given data

// Transformer data
va = 100e+3; // VA rating of Transformer
v1 = 11500; // Voltage in volts
v2 = 230; // Voltage in volts
f = 60; // Frequency in Hz
OC_pow = 560; // Power in watts
pf = +0.155;
sc_volt = 217.5; // Volts
sc_curr = 8.7; // Amperes
sc_pow = 1135; // Power in watts
ll_volt = 15000; // Line to line voltage
z_1 = 0.6; // Impedance
pf2 = +0.866;
pf3 = -0.5;

// Calculations

power_factor = sc_pow / (sc_volt * sc_curr) ;
theta_e = acos(power_factor);
transformation_ratio = v1 / v2 ;

// HT values

z = sc_volt / sc_curr;
r = z*cos(theta_e);
x = z*sin(theta_e);

// LT values

z_lt = z/(transformation_ratio^2) ;
r_lt = r/(transformation_ratio^2) ;
x_lt = x/(transformation_ratio^2) ;

zz = r_lt + %i*x_lt ;

// Referring to figure 2.16(b) in page 77

z1 = z_1 + zz ;
z_2 = z_1*(pf2 + %i*abs(pf3));
z2 = z_2 + zz;
z_3 = z_1*(abs(pf3) - %i*pf2);
z3 = z_3 + zz;

disp('z1 = ')
disp(z1);

disp('z2 = ')
disp(z2);

disp('z3 = ')
disp(z3);

disp('By referring to Figure 2.16(b) in page 77, E_A, E_B, E_C can be written in terms of the unknowns x and y.');

printf("\nE_A = -(x - 150) + j(259.8 - y) \nE_B = -x - jy \nE_C = (300 - x) - jy");
printf("\n\nI_A = E_A / z1 \nI_B = E_B / z2 \nI_C = E_C / z3 \n");

printf("\nI_A = -1.649x -0.0218y +253.01 + j(425.14 -1.649y +0.0218x) \nI_B = -1.415x -0.829y + j(0.829x - 1.415y) \nI_C = -0.860x +1.439y +258 + j(-1.439x -0.860y +431.7)\n");

// I_A + I_B + I_C = 0;

disp('On simplification and by separating the real and imaginary parts, we get two equations consisting of x and y as variables as shown');

printf("\n -3.924x +0.588y +511.01 = 0\n -0.588x -3.924y +856.84 = 0\n");

function y = ff(x);
  y(1) = -3.924*x(1)+0.588*x(2)+511.01;
  y(2) = -0.588*x(1)-3.924*x(2)+856.84;
endfunction
answer = fsolve([100;100],ff);

// Answers given in prob is supposed to have some mistake in values of x and y

x = answer([1]);
y = answer([2]);

E_A = -(x - 150) + %i*(259.8 - y) ;
E_B = -x - %i*y ;
E_C = (300 - x) - %i*y;

I_A = E_A / z1 ;
I_B = E_B / z2 ;
I_C = E_C / z3 ;

printf("\n\nI_A = %0.2f /_ %0.2f Amps", abs(I_A), atan(imag(I_A)/real(I_A))*180/%pi);
printf("\n\nI_B = %0.2f /_ %0.2f Amps", abs(I_B), atan(imag(I_B)/real(I_B))*180/%pi);
printf("\n\nI_C = %0.2f /_ %0.2f Amps", abs(I_C), atan(imag(I_C)/real(I_C))*180/%pi);
printf("\n\nE_A = %0.2f /_ %0.2f Volts", abs(E_A), atan(imag(E_A)/real(E_A))*180/%pi);
printf("\n\nE_B = %0.2f /_ %0.2f Volts", abs(E_B), atan(imag(E_B)/real(E_B))*180/%pi);
printf("\n\nE_C = %0.2f /_ %0.2f Volts", abs(E_C), atan(imag(E_C)/real(E_C))*180/%pi);

// Result
// z1 =    
// 
//    0.6059982 + 0.0080014i  
// 
// z2 =    
// 
//    0.5255982 + 0.3080014i  
// 
// z3 =    
// 
//    0.3059982 - 0.5115986i  
// 
// By referring to Figure 2.16(b) in page 77, E_A, E_B, E_C can be written in terms of the unknowns x and y.
// E_A = -(x - 150) + j(259.8 - y) 
// E_B = -x - jy 
// E_C = (300 - x) - jy
//
// I_A = E_A / z1 
// I_B = E_B / z2 
// I_C = E_C / z3 
//
// I_A = -1.649x -0.0218y +253.01 + j(425.14 -1.649y +0.0218x) 
// I_B = -1.415x -0.829y + j(0.829x - 1.415y) 
// I_C = -0.860x +1.439y +258 + j(-1.439x -0.860y +431.7)
// 
// On simplification and by separating the real and imaginary parts, we get two equations consisting of x and y as variables as shown
//
// -3.924x +0.588y +511.01 = 0
// -0.588x -3.924y +856.84 = 0
//
//
// I_A = 108.89 /_ -82.59 Amps
//
// I_B = 412.73 /_ 20.30 Amps
//
// I_C = 402.59 /_ 4.99 Amps
// 
// E_A = 65.99 /_ -81.84 Volts
// 
// E_B = 251.44 /_ 50.67 Volts
//
// E_C = 240.00 /_ -54.13 Volts
