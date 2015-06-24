clc;
//Example 24.8
//page no 360
printf("Example 24.7 page no 358\n\n");
//It is desired to separate quartz particles  from galena particles 
SG_q = 2.65//specific gravity of quartz particle 
SG_g=7.5//specific gravity of galena particles 
rho_f=1000//density of water 
rho_q=SG_q*rho_f//density of quartz paticles
rho_g=SG_g*rho_f//density of galena particle 
//calculation of the settling veloctiy of the largest quartz particle with a diameter 
D_q=9e-5//diameter of largest particle of quartz
g=9.807//grav. acc
meu_f=0.001//viscosity of water
K_q = D_q*(g*(rho_q-rho_f)*rho_f/(meu_f^2))^(1/3)//settling factor
printf("\n settling factor K_q=%f ",K_q);
//since K =2.27<3.3,stokes flow regime applies ,from the equation 23.36
v_q=g*D_q^2*(rho_q-rho_f)/(18*meu_f)//settling velocity of thelargest quartz particle
printf("\n settling velocity (quartz) v_q=%f m/s",v_q);
//calculation of the settling velocity of the smallest galena partilce 
d_g=4e-5//diameter of smallest galena particle
K_g = d_g*(g*(rho_g-rho_f)*rho_f/(meu_f^2))^(1/3)//settling factor
printf("\n settling factor K_g=%f ",K_g);
//since K = 1.6<3.3,stokes flow regime again applies
v_g=g*d_g^2*(rho_g-rho_f)/(18*meu_f)//settling velocity for galena particles
printf("\n setling velocity v_g=%f m/s",v_g);
//to  obtain pure galena the upward velociy of the water must be equal to or greater than the settling veloctiy of the quartz particle
v_w=v_q//velocity of water
printf("\n water velocity v_w=%f m/s",v_w);
