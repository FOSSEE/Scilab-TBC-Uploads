clc;
//Example 18.7
//page no 232
printf("Example 18.7 page no 232\n\n")
//two large water  reservoirs are connected by a pipe
D=0.0779//diameter of pipe (m), by appendix A.5 for 3 inch schdule 40 pipe
k=0.046*1e-3//roughness of pipe
K_r=k/D//relative roughness
printf("\n relative roughness K_r=%f ",K_r);
q=0.0126//flow rate of water m^3/s,
S=(%pi/4)*D^2//cross sectional area of pipe
v=q/S//flow velocity of water
printf("\n flow velocity v=%f m/s",v);
neu=1e-6//viscosity of water
R_e=v*D/neu//reynolds no
printf("\n reynolds no R_e=%f ",R_e);
//from R_e and relative roughness K_r ,obtain friction factor 
f=0.00345
L=2000*.3048//length of pipe,m
h_f=4*f*(L/D)*(v^2/2)
printf("\n head loss h_f=%f J/kg",h_f);
//apply bernoulli equation between station 1 and 2. Note that P1=P2=1 atm,v1=v2,z1=z2
//P_drop/rho + V^2/2g + z =  h_s - h_f
//whera h_s is the major friction loss
//above equation reduces to h_s=h_f
h_s=h_f//h_s is major friction loss
printf("\n major friction losses h_s=%f J/kg",h_s); 
