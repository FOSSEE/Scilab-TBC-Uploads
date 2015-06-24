//Ex:8.20
clc;
clear;
close;
y=1200*10^-9;// operating wavelength in m
w=5*10^-6;// spot size in m
x=2*y/(3.14*w);// divergence angle in radians
x1=x*180/3.14;//  divergence angle in degree
printf("The  divergence angle =%f radians", x);
printf("\n The  divergence angle =%f degree", x1);