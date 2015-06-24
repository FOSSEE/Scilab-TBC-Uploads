clear all; clc;
//This numerical is Ex 2_1,page 18.

//These are examples given in the book,they are used to teach conversions from one unit to another

rho=0.075//lbm/ft^3

V=120

RHO_c=rho/32.2//rho conerted to slug/ft^3

disp("The initial value of rho was given in lb/ft^3. In order to convert it to slug/ft^3,we have used the conversion factor 1/32.2.")

printf("\nThe initial value of rho was 0.075lb/ft^3 after coverting it is %0.5f slug/ft^3",RHO_c)

p_d=RHO_c*V^2/2

printf("\nHence the value of dynamic pressure is %0.2f (slug/ft^3)(ft/s)",p_d)

p_dc=p_d/(12^2)//converting slug*s/ft^2 to lbf/in^2

printf("\nThe final value of dynamic pressure is %0.3f lbf/in^2",p_dc)

printf("\nHence we can say that the dynamic power is equal to  %0.3f psi.",p_dc)
