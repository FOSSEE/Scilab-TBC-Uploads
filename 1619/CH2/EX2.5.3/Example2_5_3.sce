//Example 2.5.3 page 2.26

clc;
clear;
 lamda = 850;
 sigma= 20;
 D_mat = 0.055/(3*10^5*lamda);
sigma_m= sigma*1*D_mat;
D_mat=D_mat*10^12; // in Ps...
sigma_m=sigma_m*10^9; //in ns////
 printf("The material Dispersion is %.2f Ps/nm-Km",D_mat);
 printf("\n\nThe Pulse spreading is %.4f ns/Km",sigma_m);
