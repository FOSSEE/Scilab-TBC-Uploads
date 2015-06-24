//Ex:2.29
clc;
clear;
close;
u_o=12.57*10^-7;
u_r=500;
A=15*10^-4;//area of cross-section in sq. meters
l=20*10^-2;//length
L=100*10^-3;//in henry
n=sqrt((L*l)/(u_r*u_o*A));
printf("Inductor requires %d turns of wire",n);