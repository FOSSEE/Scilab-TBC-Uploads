clc;
//Example 22.13
//page no 313
printf("Example 22.13 page no 313\n\n");
//hydrogen flows through a horizontal pipe
//properties of hydrogen at 20 deg C from table A.3 in the appendix
rho=0.0838//density of hydrogen,kg/m^3
meu=9.05e-6//viscosity,kg/m.s
D=0.08//diameter of pipe,m
L=1//unit length of pipe,m
q=0.0004//vol. flow rate ,m^3/s
S=.000503//cross sectional area
v=q/S//flow velocity,m/s
m_dot=rho*q//mass flow rate,kg/s
R_e=(D*v*rho/meu)//reynolds no.
printf("\n R_e reynolds no=%f ",R_e);
//since R_e is 593<2100, flow is laminar
//since the tube is horizontal z1=z2,calculation of pressure gradient(P/L)
P_grad= 128*meu*q/(%pi*D^4)//pressure gradient
printf("\n Pressure gradient P_grad=%f Pa/m",P_grad)
v_max=2*v//m/s
//calculation of fanning friction factor
//since the flow is laminar 
f=16/R_e//fanning friction factor
printf("\n fanning friction factor f=%f ",f);
f_d=4*f//darcy friction factor
printf("\n darcy friction factor f_d=%f ",f_d);
g=9.807//grav. acc.
h_f=f_d*(L/D)*(v^2/(2*g))//friction loss
printf("\n friction loss h_f=%f m",h_f);
W_f = m_dot*g*h_f//friction power loss
printf("\n friction power loss W_f=%f W",W_f); 






 
