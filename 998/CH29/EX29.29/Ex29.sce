//Ex:29
clc;
clear;
close;
u=0.55;//aperture efficiency
f=12;// in GHz
d=3;// diameter in m
G_i=u*(10.472*f*d)^2;
g=ceil(G_i);
g_i=10*log(g)/log(10);//in db
printf("Gain=%f ",g_i);