clear all;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.9
// Page 51
printf("Example 2.9, Page 51 \n\n")

k = 330;             //thermal conductivity in W/m K
a = 95*10^(-6);      //thermal expansion coefficient
R = 0.01;            //radius in meters
To = 77;            //temperature in kelvins
Tf = 273+50;        //temperature in kelvins
theta1 = To - Tf;
T = 273+10;         //temperature in kelvins
theta = T - Tf;
h = 20;             //heat transfer coefficient in W/m^2 K
printf("\n Theta1 = %d K",theta1);
printf("\n Theta = %d K ",theta);
printf("\n v/A = %.3f m",R/2);
printf("\n k/a = %.4f*10^(6) J/m^3 K",(k/a)*10^(-6));

time = (k/a)*(R/2)/h*log(theta1/theta);

printf("\n Time taken by the rod to heat up = %.1f secs",time); 
Bi = h*R/k;
printf("\n Biot number Bi = %.2f*10^(-4) ",Bi*10^4);
printf("\n Since Biot number is much less than 0.1,therefore assumption  that internal temperature gradients are negligible is a good one");







