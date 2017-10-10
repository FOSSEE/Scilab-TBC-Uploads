clear;
clc;
printf("\nEx2.13\n");
//page no.-63
//given
v=500;..............//speed of e in m/s
m=9.11*10^-31;......//mass of e
del_v=0.0001;........//change in velocity
h=6.625*10^-34;......//planck's constant
p=m*v;.................//momentum
del_p=p*del_v;..........//change in momentum in kg*m/sec

del_x=h/(2*%pi*del_p)...............//uncertainty in position in m

printf("\nminimum uncertainty in position is 2.318 mm\n");
