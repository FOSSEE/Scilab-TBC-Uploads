clc;
//Example 23.5
//page no 338
printf("\n Example 23.5 page no 338\n\n");
//refer to example 23.5
//we have to calculate size of a flyash particle that will settle with a velocity of 1.384 ft/s
SG=2.31//specific gravity of fly ash
rho_w=62.4//density of water 
rho_p=SG*rho_w//density of particles
//properties of air
R=0.7302//gas constant
T=698//temperature,R
P=1//pressure ,atm
Mw=29//mol. wt of air
rho_a=P*Mw/(R*T)//density of air,lb/ft^3
meu=1.41e-5//viscosity of air,lb/ft.s
g=32.174//grav. acc
v=1.384//velocity at which particle settle down,ft/s
W= v^3*rho_a^2/(g*rho_p*meu)//dimensionless constant
printf("\n dimensionless constant W=%f ",W);
//since W < 0.2222 stokes' law applies
D_p=sqrt(18*meu*v/(g*rho_p))//diameter of particle
printf("\n diameter of particle D_p=%f ft",D_p);
  
