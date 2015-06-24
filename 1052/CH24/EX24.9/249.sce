clc;
//Example 24.9
//page no 361
printf("\n Example 24.9 page no 361\n\n");
//refer to illustrative example 24.8
//we have to determine the size range of the galena in the top product
//to determine the size range of the galena product ,calculate the galena particle size that has a settling velocity equal to water velocity 
//assume stokes law applies
v_w=0.0073//velocity of water
v_q=v_w//velocity of quartz particles
SG_q = 2.65//specific gravity of quartz particle 
SG_g=7.5//specific gravity of galena particles 
rho_f=1000//density of water 
rho_q=SG_q*rho_f//density of quartz paticles
rho_g=SG_g*rho_f//density of galena particle
g=9.807//grav. acc
meu_f=0.001//viscosity of water
D = sqrt(18*meu_f*v_q/(g*(rho_g-rho_f)))
printf("\n diameter D =%f m",D);
//check on the validity of stokes law by calculating the K factor 
K = D*(g*(rho_g-rho_f)*rho_f/(meu_f^2))^(1/3)//settling factor
printf("\n settling factor K=%f ",K);
//since K =1.82<3.3 , the flow is in the stokes law range 
