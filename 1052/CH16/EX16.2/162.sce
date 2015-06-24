clc;
//Example 16.2
//page no 183
printf(" Example 16.2 page no 183\n\n");
//cal. pressure drop if the flow for both phases is turbulent
//a. since the flow is tt and 1<X<10 ,apply equatuion 16.16b to obtain Y_g
X=1.66
Y_g=5.80+6.7143*X+6.9643*X^2-0.75*X^3
printf("\n Y_g=%f ",Y_g);
//the value of Y_g is an excellent agreement with the values provided by lockhart and Martinelli
//then pressure drop is
P_drop_g=2.71
P_drop_t=Y_g*P_drop_g
printf("\n P_drop_t=%f psf/100 ft",P_drop_t);
//b. applying eq. 16.17b to generate Y_l
Y_l=18.219*X^-.8192
printf("\n Y_l =%f ",Y_l);
//pressure drop from eq. 16.2
P_drop_l=7.50
P_drop=Y_l*P_drop_l
printf("\n P_drop=%f psf/100ft",P_drop); 
