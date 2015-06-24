clc;
//Example 16.6
//page no 191
printf("\n Example 16.6 page no 191\n\n");
//a mixture of air(a) and kerosene(k) are flowing in a horizontal pipe 
rho_a=0.075//density of airlb/ft^3
meu_a=1.24e-5//viscosity of air ,lb/ft.s
q_a=5.3125//flow rate ft^3/s
rho_k=52.1//density of kerosene,lb/ft^3
meu_k=0.00168//viscosity lof kerosene,lb/ft.s
q_k=1.790//flow rate ft^3/s
D=.19167//diameter of pipe ,ft
S=(%pi/4)*D^2//cross sectional area,ft^2
printf("\n S=%f ",S);
//superficial velocity of each phase can be obtained by applying either eq, 16.7 and 16.8
v_a=q_a/(S*60)//for air
v_k=q_k/(S*60)//for kerosene
printf("\n velocity v_a =%f ft/s\n velocity v_k=%f ft/s",v_a,v_k);
R_e_a=D*rho_a*v_a/meu_a//reynolds no. of Air
R_e_k=D*rho_k*v_k/meu_k//reynolds no. of kerosene
printf("\n R_e_a=%f\nR_e_k=%f ",R_e_a,R_e_k);
