clc;
//Example 16.3
//page no 185
printf(" Example 16.3 page no 185\n\n");
//if the flow for the gas phase is turbulent and the liquid phase is viscous
//cal. pressure drop total
X=1.66//from ex. 16.1
Y_G_tv=20-21.81*X+16.357*X^2-1.8333*X^3
printf("\n Y_G_tv=%f ",Y_G_tv);
//pressure drop from eq 16.1
P_drop_g=2.71
P_drop_a=Y_G_tv*P_drop_g
printf("\n pressure drop P_drop_a=%f psf/100 ft",P_drop_a);
//b. applying eq 16.20b to generate Y_l
Y_l_tv=11.702*X^-0.7334
printf("\n Y_l_tv=%f ",Y_l_tv);
//pressure drop from equation 16.2
P_drop_l=7.50
P_drop_b=Y_l_tv*P_drop_l
printf("\n P_drop_b=%f psf/100 f",P_drop_b);
