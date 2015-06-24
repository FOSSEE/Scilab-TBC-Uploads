clc;
//Example 26.3
//page no 384
printf("Example 26.3 page no 384\n\n");
//refer to Example 26.2
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
//calculation of the  pressure drop due to friction and the pressure drop across the resin bed 
k=e^3*d_p^2/(150*(1-e)^2)//packed bed permeability
P_drop_fr=rho*h_f//friction pressure drop across resin bed,psf
printf("\n fricion pressure drop P_drop_fr=%f psf",P_drop_fr); 
z_d=-1//length from point 2 to 3,ft
P_drop_r=rho*(z_d+h_f)//pressure drop across the resi bed
printf("\n pressure drop across across the resin bed P_drop_r=%f psf",P_drop_r);
 
 
