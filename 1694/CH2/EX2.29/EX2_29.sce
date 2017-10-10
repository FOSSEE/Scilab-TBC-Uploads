clear;
clc;
printf("\nEx2.29\n");
//page no.-72
//given
v=1.05*10^4;..............//speed of e in m/s
m=9*10^-31;......//mass of e
h=6.62*10^-34;......//planck's constant
del_v=0.0001;........//change in velocity

p=m*v;.................//momentum in kg*m/sec

del_p=p*del_v..........//change in momentum in kg*m/sec
//By Heisenberg's uncertainty principle

del_x=h/(2*%pi*del_p)...............//uncertainty in position in m

printf("\nminimum uncertainty in position is 1.115*10^4 m\n");
