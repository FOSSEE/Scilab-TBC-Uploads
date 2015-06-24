clc;
//Example 22.14
//page no 315
printf("\Example 22.14 page no 315\n\n");
//gasoline is pump through a horizontal cast iron pipe
L=30//length of pipe
D=0.2//diameter of pipe,m
S=(%pi/4)*D^2//cross sectional area
q=0.3//vol. flow rate ,m^3/s
v=q/S//flow velocity,m/s
rho=680//density of gasoline,kg/m^3
meu=2.92e-4//viscosity of gasoline,kg/m.s
R_e=D*v*rho/meu//reynolds no.
printf("\n reynolds no R_e=%f ",R_e);
//since R_e is >4000 flow is turbulent
k=0.00026//roughness factor from table 14.1 for cast iron,m
K_r=k/D//relative roughness
f=0.00525//fanning friction factor from fig 14.2
//Note that the flow corresponds to complete turbulence in the rough pipe
g=9.807//gravitational acceleration
//h_f=4*f*(L/D)*(v^2/(2*g))//head loss
h_f=14.647
//applying bernoulli equation to the fluid in the pipe
//in this case the pipe is horizontal (z1=z2) with constant diameter (v1=v2) and no shaft head (h_s=0)
//first convert the friction head to a pressure difference
P_diff=rho*g*h_f//pressure difference 
P_diff= 97.68*10^3//after round off
W_s_id=q*P_diff//ideal shaft work
printf("\n ideal shaft work W_s_id=%f W ",W_s_id);
neta=0.8//efficiency of pump
W_s_ac=W_s_id/neta//actual shaft work 
printf("\n actual shaft work W_s_ac=%f W",W_s_ac);
f_s=0.009//friction factor smooth
f_r=0.021//friction factor roughnes
k=f_r/f_s
f_inc=100*(k-1)//percentage increment in f due to roughness 
printf("\n f_inc=%f ",f_inc);






