clc;
//Example 26.9
//page no 394
printf("Example 26.9 page no 394\n\n");
//turbulent flow of water through a carbon bed
d_p=0.001//particle diameter
meu=0.001//viscosity of water
e=0.25//porosity
R_e=1000//R_e is >1000 for turbulent flow,for minimum pressure drop
rho=1000//density of water,kg/m^3
v_s=R_e*meu*(1-e)/(d_p*rho)//superficial velocity
printf("\n superficial velocity v_s=%f m/s",v_s);
phi_s=1//spehercity
L=0.5//length of bed,m
P_drop = 1.75*rho*L*v_s^2*(1-e)/(phi_s*d_p*(e^3))//presssure drop
printf("\npressure drop P_drop=%f Pa",P_drop);
