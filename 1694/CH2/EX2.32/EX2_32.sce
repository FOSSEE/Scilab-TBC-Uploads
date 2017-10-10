clear;
clc;
printf("\nEx2.32\n");
//page no.-72
//given
v=5000;..............//speed of e in m/s
m=9*10^-31;......//mass of e
del_v=0.00003;........//change in velocity
h=6.63*10^-34;......//planck's constant

p=m*v;.................//momentum

del_p=p*del_v;..........//change in momentum in kg*m/sec
//By Heisenberg's uncertainty principle,
del_x=h/(2*%pi*del_p)...............//uncertainty in position in m

printf("\nminimum uncertainty in position is 7.82*10^4 m\n");
