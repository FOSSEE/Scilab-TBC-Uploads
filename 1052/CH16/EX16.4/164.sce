clc;
//Example 16.4
//page no 187
printf("Example 16.4 page no 187\n\n");
//if flow for both phases is laminar then cal pressure drop total
//a. apply eq. 16.22b to obtain Y_G
X=1.66
Y_G=10-10.405*X+8.6786*X^2-0.9167*X^3
printf("\n Y_G=%f ",Y_G);
//pressure drop from eq 16.1
P_drop_g=2.71
P_drop=Y_G*P_drop_g
printf("\n pressure drop P_drop=%f psf/100 ft",P_drop);
//b. apply eq 16.23b to generate Y_l
Y_l=6.4699*X^-0.556
printf("\n Y_l =%f ",Y_l);
//pressure drop from eq. 16.2
P_drop_l=7.50
P_drop_b=Y_l*P_drop_l
printf("\n pressure drop P_drop_b=%f psf/100 ft",P_drop_b);

