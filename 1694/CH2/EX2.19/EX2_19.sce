clear;
clc;
printf("\nEx2.19\n");
//page no.-65
//given
del_x=10^-9;...............//uncertainty in position of electron in m
h=6.6*10^-34;................//planck's constant in joule-sec
m=9*10^-31;....................//mass of e in kg

del_p=h/del_x...............//uncertainty in momentum in kg*m/sec
//as p=m*v

del_v=del_p/m................//uncertainty in velocity in m/s

printf("\nuncertainty in velocity is 7.3*10^5 m/s\n");
