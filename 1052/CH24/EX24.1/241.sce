clc;
//Example 24.1
//page no 350
printf("Example 24.1 page no 350\n\n");
//glass sphere are settling in water at 20 deg C
//the slurry contains 60 wt% solids 
// start by assuming a basis of 100 kg of slurry
m_f=40//mass of fluid,kg
rho_f=998//density of water,kg/m^3
V_f=m_f/rho_f//volume of the fluid,m^3
m_s=60//mass of solid,kg
rho_p=2467//density of glass,kg/m^3
V_s=m_s/rho_p//volume of glass,m^3
V = V_f + V_s//total volume,m^3
v_frac_f = V_f/V//volume fraction for the fluid particles
printf("\n volume fraction fluid particles v_frac_f =%f ",v_frac_f);
v_frac_p=1-v_frac_f//volume fraction for the glass particles
printf("\n volume fraction for the glass particles v_frac_p=%f  ",v_frac_p);
rho_m=round(v_frac_f*rho_f  + v_frac_p*rho_p)//bulk density of slurry
printf("\n bulk density of slurry rho_m=%f kg/m^3 ",rho_m);
b=10^(1.82*(1-v_frac_f))//dimensionless correction factor
g=9.807//gravitational acc.,m/s^2
D_p=0.0001554//diameter of particle,m
meu_f=0.001//viscosity of fluid
v_t = g*D_p^2*(rho_p-rho_f)*v_frac_f^2/(18*meu_f*b)//terminal velocity
printf("\n terminal velocity v_t=%f m/s",v_t);
meu_m = meu_f*b//effective mixture viscosity
printf("\n effective mixture viscosity meu_m=%f kg/m.s",meu_m);
