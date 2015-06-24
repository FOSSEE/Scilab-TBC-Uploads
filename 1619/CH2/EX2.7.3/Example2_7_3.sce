//Example 2.7.3 page 2.39

clc;
clear;

Lb= 0.09;
lamda= 1.55*10^-6;
delta_lamda = 1*10^-9;
Bf= lamda/Lb;
Lbc= lamda^2/(Bf*delta_lamda);
printf("The modal Bifriengence is %.2f meters ",Lbc);
beta_xy= 2*%pi/Lb;
printf("\n\nThe difference between propogation constants is %.2f", beta_xy);
