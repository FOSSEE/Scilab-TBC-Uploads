clear;
clc;
d = 6;// feet
l = 60;// feet
f = 15/2;// tons/in^2
E = 13000;// tons/in^2
k1 = 2*f/(12*d);// k1 = M_r/I 
k2 = k1/(l*12/8);//k2 = W/I
y_c = (5/384)*k2*l^3 *12^3 /E;// inches
//If the giredr is of constant deapth and uniform strength, it bends to an arc of a circle of radius R 
R = E*d*12/(2*f);// inches
delta = (l*12)^2 /(8*R);// inches
printf('The deflection for a uniformly distributed load on it is,delta = %.2f inches',delta);
