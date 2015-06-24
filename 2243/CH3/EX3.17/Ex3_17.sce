clc();
clear;
//Given :
D10_air = 1.75 ;//diameter of the 10th bright ring in Newton's ring apparatus in cm
D10_liquid = 1.59 ; // diameter of the 10th bright ring in Newton's ring apparatus in cm
// The diameter of the nth bright ring in Newton's ring apparatus :  D_n = 2*(R*(n + 1/2)*(lambda/mu))^0.5
mu = (D10_air/D10_liquid)^2;
printf("The refractive index of the liquid is %.3f",mu);
