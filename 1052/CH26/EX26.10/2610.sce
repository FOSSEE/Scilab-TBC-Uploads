clc;
//Example 26.10
//page no 395
printf("Example 26.10 page no 395\n\n");
//a bed of 200 mesh particles is fluidized with air
d_b=0.2//diameter of bed,m
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
v_t=0.35//terminal velocity from example 26.3
e=0.91//value of e porosity from eq26.9
L_f=L_o/(1-e)//expanded bed height L_f
m=rho_s*%pi*d_b^2*L_o//bed inventory
printf("\n expanded bed height L_f=%f m\n bed inventory m=%f kg",L_f,m);
