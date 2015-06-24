clc;
//Example 21.7
//Page no 284
printf("Example 21.7 page no 284\n\n");
// water is flowing through a 3/8 in schedule 40 brass pipe
D=0.0411//diameter of pipe,ft
S=0.00133//cross section area of pipe,ft^2
meu=6.598e-4//viscosity of water from table A.4 in the appendix,lb/ft.s
rho=62.4//density,lb/ft^3
q_gpm=2//vol.flow rate 
q=q_gpm*0.00228//volumatric flow rate in ft^3s
v=q/S//velocity of fluid
printf("\n veloctiy of fluid v=%f ft/s",v);
R_e=D*v*rho/meu//reynolds no.
printf("\n reynolds no R_e=%f ",R_e);
