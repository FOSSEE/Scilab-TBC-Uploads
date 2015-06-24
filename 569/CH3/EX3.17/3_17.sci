// calculate the per unit change in the value of spring for different temperature ranges
clc;
dG_pu=-240*10^-6;
dD_pu=11.8*10^-6;
disp('for temperature change of 20 degree C to 50 degree C (%) =')
d_th=30;
dK_pu=(dG_pu+dD_pu)*d_th*100;
disp(dK_pu)
disp('for temperature change of 20 degree C to -50 degree C (%) =')
d_th=-70;
dK_pu=(dG_pu+dD_pu)*d_th*100;
disp(dK_pu)
