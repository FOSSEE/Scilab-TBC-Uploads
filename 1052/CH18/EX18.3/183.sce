clc;
//Example 18.3
//page no 227
printf("\n Example 18.3 page no 227\n\n");
// water is flowing at room temperature
rho=62.4//density  of water,lb/ft^3
meu=6.72e-4//viscosity of water,lb/ft.s
D=0.03125//diameter of pipe
v=10//velocity 
R_e=D*v*rho/meu//reynolds no.
printf("\n reynolds no R_e=%f ",R_e);
f=0.0015+0.125/R_e^.30//equation for friction factor
printf("\n friction factor f=%f ",f);
L=30//length of pipe
gc=32.2//gravitational constant
P_drop=2*f*rho*v^2*L/(D*gc)//pressure drop 
printf("\n pressure drop P_drop=%f lbf/ft^2 ",P_drop);
