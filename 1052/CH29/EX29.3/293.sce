clc;
//Examctple 29.3
//page no 455
printf("Example 29.3 page no 455");
//an iron foundry has four work stations that are connected to single duct
v_air=4000//the minimum air velocity required for general foundry dust,ft/min
v_air_s=v_air/60//velocity of air in ft/s
n=4//no. of duct
q_e=3000//each duct transport air,acfm
q=n*q_e//total transport,acfm
A=q/v_air//cross sectional area required ,ft^2
D=sqrt(4*A/%pi)//duct diameter,ft
rho=0.075//density of air
meu=1.21e-5//viscosity of air
R_e=D*rho*v_air_s/meu//reynolds no
printf("\n reynolds no. R_e=%f ",R_e);
f=0.003///fanning friction factor,since R_e >20000
L=400//duct length
g_c=32.2//grav. acc.
P_drop_d=(4*f*L*v_air_s^2*rho)/(2*g_c*D)//pressure drop in the duct
printf("\n pressure drop in duct P_drop_d=%f lbf/ft^2",P_drop_d);
P_drop_h=0.5*5.2//pressure drop in  hood
P_drop_cyc=3.5*5.2//pressure drop in cyclone cleaner
P_drop_t=P_drop_d + P_drop_h + P_drop_cyc//total prssure drop
printf("\n total pressure drop P_drop_t=%f lbf/ft^2",P_drop_t);
neta=0.4//pump efficiency
hp=(P_drop_t*q/neta)*3.03e-5//power required in hp
printf("\n power required hp=%f hp ",hp);
