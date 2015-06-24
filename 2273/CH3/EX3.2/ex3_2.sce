//Calculate the max sag
clear;
clc;
//soltion
//given
W=.6;//kg/m//Line conductor wieght
L=300;//meter//span of the line
T=1200;//kg//max allowable tension
printf("Max sag= (W*L^2)/(8*T)\n");
sag= (W*L^2)/(8*T);
printf("Sag= %.3f m",sag);
