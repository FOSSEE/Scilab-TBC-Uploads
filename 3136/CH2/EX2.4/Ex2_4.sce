clear all; clc;
//This numerical is Ex 2_4,page 19.

//converting dynamic pressure of air from 2_1 to wg

pd=16.77//lbf/ft^2
rho_w=62.4/32.2
g=32.2
disp("From pressure=density*gravitational accelaration *head, we can find out the value of head")
h=pd/(rho_w*g)
printf(" Hence the value of head H is %0.3f (lbf/ft^2)/(lbf/ft^3)",h)
printf("\n The value of head H can also be given by %0.3f ft",h)
