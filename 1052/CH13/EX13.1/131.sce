clc;
//Example 13.1
//page no 136
printf("Example 13.1 page no 136\n\n");
//calculate average velocities for which th flow will be viscous,laminar
//(a) water at 60 deg F in a 2-inch standard pipe 
R_e=2100//reynolds number <2100, for laminar flow
meu_w=6.72e-4//viscosity of water,lb/ft.s
rho_w=62.4//density of water,lb/ft^3
D_w=2.067//diameter  of pipe,ft
v_w=(R_e*meu_w)/((D_w/12)*rho_w)//velocity of water
printf("\n velocity v_w=%f ft/s",v_w);
//(b) air at 60 deg F and 5 psig in a 2 inch standard pipe
meu_a=12.1e-6//viscosity of air ,lb/ft.s
rho_a=.1024// density of air,lb/ft^3
D_a=0.17225//diameter of pipe ,ft
v_a=(R_e*meu_a)/(D_a*rho_a)//velocity of air
printf("\n velocity of air v_a=%f ft/s",v_a);
//(c) oil of a viscosity of 300 cP and SG of .92 in a 4 inch standard pipe
meu_o=300*6.72e-4//viscosity of oil ,lb/ft.s
rho_o=0.92*62.4//density of oil, lb/ft^3
D_o=.3355//diameter of pipe,ft
v_o=round((R_e*meu_o)/(D_o*rho_o))//velocity of oil
printf("\n velocity of oil v_o=%f ft/s",v_o);
