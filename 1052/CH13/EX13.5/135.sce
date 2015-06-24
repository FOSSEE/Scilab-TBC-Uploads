clc;
//Example 13.5
//page no 139
printf(" Example 13.5 page no 139\n\n");
//a circulsr horizontal tube cntains asphalt
D=0.1667//diameter of tube,ft
s=%pi*D^2/4//surface area of tube,ft^2
q=0.486//volumatric flow rate,ft^3/s
v=q/s//flow velocity
printf("flow velocity v=%f ft/s",v);
g=32.174
P_grad=144//pressure gradient ,psf/ft
meu=(%pi*P_grad*g*D^4)/(128*q)//dynamic viscosity,laminar flow
printf("\n dynamic viscosity meu=%f lb/ft.s",meu);
//check on the laminar flow
rho=70//density,lb/ft^3
R_e=D*v*rho/meu//reynlods number
printf("\n reynolds no R_e=%f ",R_e);
f=16/R_e//fanning friction factor
printf("\n friction factor f=%f ",f);
//the pipe must be longer than the entrance length to have fully developed flow
L_e=0.05*D*R_e//entrance length
printf("\n entance length L_e=%f ft",L_e);
