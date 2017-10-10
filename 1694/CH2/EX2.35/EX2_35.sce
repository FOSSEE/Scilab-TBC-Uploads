clear;
clc;
printf("\nEx2.35\n");
//page no.-73
//given
del_x=0.01*10^-2;...............//uncertainty in position of electron in m
h=6.62*10^-34;................//planck's constant in joule-sec
m=9*10^-31;....................//mass of e in kg
x=5*10^-10;....................//diameter of nucleus in m
//By Heisenberg's uncertainty principle,

del_p=h/(2*%pi*del_x)...........//uncertainty in momentum in kg*m/sec

del_v=h/(2*%pi*m*x).............//uncertainty in velocity in m/sec

printf("\nuncertainty in momentum is 1.054*10^-30 kg*m/sec and in velocity is 2.34*10^5 m/sec\n");
