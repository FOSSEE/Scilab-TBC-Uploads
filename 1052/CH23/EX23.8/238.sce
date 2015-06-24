clc;
//Example 23.8
//page no 342
printf("Example 23.8 page no 342\n\n");
//a small sphere is observed to fall through caster oil 
v_t=0.042//terminal velocity of particle 
meu_f=0.9//viscosity of oil
rho_f=970//density of oil
g=9.807//grav. acc.
D_p=0.006//diameter of particle
rho_p=(18*meu_f*v_t)/(g*D_p^2)  + rho_f
printf("\n density of particle rho_p=%f kg/m^3",rho_p);
neu_f=9.28e-4//dynamic viscosity of fluid
R_e=D_p*v_t/neu_f//reynolds no
printf("\n reynolds no R_e=%f ",R_e);
//since R_e < 0.3
//calculation of the settling criterion factor ,K
K=D_p*(g*rho_f*(rho_p-rho_f)/(meu_f^2))^(1/3)//the settling criterion factor
printf("\n K=%f ",K);
//since K <3.3, stokes law applies 
//the drag coeff. C_d 
C_d=24/R_e
printf("\n drag coeff C_d=%f ",C_d);
F_d=3*%pi*meu_f*D_p*v_t//drag force
printf("\n drag force F_d=%f N",F_d);
F_b=(%pi/6)*D_p^3*rho_f*g//buoyancy force 
printf("\n buoyancy force F_b=%f N",F_b);
//Consider the case when same sphere is dropped in water 
rho_w=1000//density of water,kg/m^3
meu_w=0.001//viscosity of water,kg/m.s
//the particle will move faster because of the lower viscosity of water ,stokes law will almost definietly not apply
K_w=D_p*(g*rho_w*(rho_p-rho_w)/(meu_w^2))^(1/3)//the settling criterion factor
printf("\n k_w settling factor =%f ",K_w);
//since K_w = 158 > 43.6,the flow is in the Newton's law regime 
//employ eq. 23.31 but include the (buoyant) density ratio factor
v_t_w=1.75*sqrt((rho_p-rho_w)/(rho_w)*g*D_p)//terminal velocity 
printf("\n terminal velocity in water v_t_w=%f m/s",v_t_w);  




 
