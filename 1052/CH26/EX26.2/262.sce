clc;
//Example 26.2
//page no 382
printf("Example 26.2 page no 384\n\n");
//a water softner unit consists of a large diameter tank ,the bottom of tank is connected to a vertical ion exchange pipe
h_f=1.25//total fluid height 
h_l=h_f
g=32.174//grav. acc
e=0.25// bed porosity  
d_p=0.00417//ion exchange resin particle diameter,ft
L=1//pipe length ,ft
//assume turbulent flow ,apply burke purmer equation
v_s=sqrt(g*h_f*e^3*d_p/(1.75*(1-e)*L))//superficial velocity
printf("\n superficial velocity v_s=%f ft/s",v_s);
meu=6.76e-4//absolute viscosity of water
rho=62.4//density of water
//check for turbulent flow 
R_e=d_p*v_s*rho/((1-e)*meu)
printf("\n R_e=%f",R_e);
//since reynold no is low the calculation is not valid 
//assume laminar flow and use Blake-Kozeny equation 26.9
v_s_t=rho*g*h_f*e^3*d_p^2/(150*meu*((1-e)^2)*L)//superficial velocity
printf("\n superficial velocity v_s_t=%f ft/s",v_s_t);
 //check the porous medium reynolds no
 R_e_t=v_s_t*d_p*rho/((1-e)*meu)
 printf("\n reynolds no R_e_t=%f ",R_e_t);
 //since reynolds no R_e < 10,the flow is therfor laminar
 D=0.167//diameter of pipe
 S=(%pi/4)*D^2//empty cross sectional area
 q=v_s_t*S//volumetric flow rate
 printf("\n vol. flow rate q=%f ft^3/s",q);
