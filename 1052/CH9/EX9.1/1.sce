clc;
//Example 9.1
//page no 87
printf("Example 9.1 page no 87\n\n");
//a horizontal water jet impinges on avertical plate
rho=62.4//density of water
v=100//horizontal velocity of water
q=0.5//flow rate
g=32.2//gravitational constant
printf("\n density rho=%f lb/ft^3\n horizontal velocity of water v=%f ft/s\n flow rate q=%f ft^3/s",rho,v,q);
M_in=(rho*q*v)/g//momentum rate of inlet water in the horizontal direction
printf("\n momentum rate M_in=%f lbf",M_in);
M_out=0//momentum rate of water out
F=M_out-M_in
printf("\n net horizontal force F=%f lbf",F);
//negative sign indicate that to hold the plate in place, a force must be exerted in a direction opposite to that of the water flow
