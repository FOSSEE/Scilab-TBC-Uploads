//Ex:87
clc;
clear;
close;
t_e1=100;// in K
t_e2=60;// in K
t_e3=20;// in K
G1=10^6;
G2=10^4;
t_e=t_e1+(t_e2/G1)+(t_e3/G1*G2);
printf("The equivalent noise temperature=%d K",t_e);