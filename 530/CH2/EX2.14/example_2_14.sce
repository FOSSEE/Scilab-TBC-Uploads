clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.14
// Page 74
printf("Example 2.14, Page 74 \n\n")

L = 0.02 ; // [m]
t = 0.002 ; // [m]
b = 0.2 ; // [m]
theta1 = 200 ; // [C]
h = 15 ; // [W/m^2 K]
k = 45 ; // [W/m K]

Bi = h*(t/2)/k ;

// We have
P = 2*(b+t); // [m]
A = b*t ; // [m^2]
// Therefore
mL = ([(h*P)/(A*k)]^(1/2))*L;

// From equation 2.8.6, fin effectiveness n
n = tanh(mL)/mL;
printf("Fin Effectiveness = %f \n",n);

q_loss = n*h*40.4*2*10^-4*200; // [W]
printf("Heat loss rate from fin surface = %f W",q_loss);