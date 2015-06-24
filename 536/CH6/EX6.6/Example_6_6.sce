clc;
clear;

printf("\n Example 6.6\n");

G=15; //Mass flow rate of organic liquid
printf("\n Given:\n Mass flow rate of organic liquid = %d kg/s",G)
L_ow=2;//Length of the weir
printf("\n Length of the weir = %.1f m",L_ow);
rho_l=650;
printf("\n Density of liquid = %d kg/m^3",rho_l);
Q=G/rho_l;
//Use is made of the Francis formula (equation 6.43),
h_ow=(2/3)*(Q/L_ow)^(2/3);
printf("\n\n Calculations:\n Height of liquid flowing over the weir = %.2f mm",h_ow*1e3);