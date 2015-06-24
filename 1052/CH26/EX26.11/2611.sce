clc;
//Example 26.11
//page no 396
printf("\n Example 26.11 page no 396\n\n");
//refer to illustrative example 26.9
d_p=7.4e-5//particle diameter
L_mf=0.3//bed height at minimum fludization
e_mf=0.45//bed porosity at min. fluidization
L_o=L_mf*(1-e_mf)//the zero porosity bed height 
printf("\n zero porosity bed height L_o=%f m",L_o);
rho_s=2200//density of particles 
rho_f=1.2//density of fluid
g=9.807//grav. acc
meu_f=1.89e-5//viscosity of fluid
//assuming laminar flow ,use equation  26.9
v_mf =(e_mf^3)*(g*(rho_s-rho_f)*(d_p^2))/(150*(1-e_mf)*meu_f)//velocity at minimum fluidization
printf("\n velocity at min. fluidization v_mf=%f m/s",v_mf);
F_mf=v_mf^2/(g*d_p)//fluidization mode
printf("\n fluidization mode F_mf=%f ",F_mf);
//from value of F_mf ,fluidization is smoth,F_mf =0.66<0.13
