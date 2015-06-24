clc;
//Example 26.4
//page no 387
printf("\nExample 26.4 page no 387\n\n");
//air is used to fluidize a bed of speherical particles
D=0.2//bed diameter,m
d_p=7.4e-5//diameter of 200 mesh particles from table 23.2,m
rho_s=2200//ultimate solid density
rho_f=1.2//density of air
meu=1.89e-5//viscosity of air
g=9.807//grav. constant
e=0.45//bed porosity
L_mf=0.3//length at minimum fluidization
//assume laminar flow 
//applying equation 26.29
v_mf=(1-e)*g*rho_s*d_p^2/(150*e^3*meu)//minimum fluidizaton veloctiy 
printf("\n min. fluidization velocity v_mf=%f m/s",v_mf);
//check the flow regime
R_e=v_mf*d_p/(meu*(1-e))
printf("\n Reynolds no R_e=%f ",R_e);
//since R_e= 1.79 <10,flow is laminar
m_dot=%pi*v_mf*D^2*rho_f/4//mass flow rate
printf("\n mass flow rate m_dot =%f kg/s",m_dot);
P_fr=round((1-e)*rho_s*g*L_mf)//gas pressure drop across the bed
printf("\n gas pressure drop P_fr=%f Pa",P_fr);
