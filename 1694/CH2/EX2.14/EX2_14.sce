clear;
clc;
printf("\nEx2.14\n");
//page no.-63
//given
v=600;..............//speed of e in m/s
m=9.1*10^-31;......//mass of e
del_v=5*10^-5;........//change in velocity
h=6.625*10^-34;......//planck's constant
p=m*v;.................//momentum
del_p=p*del_v;..........//change in momentum in kg*m/sec

del_x=h/(del_p)...............//uncertainty in position in m

printf("\nminimum uncertainty in position is 0.024 m\n");
