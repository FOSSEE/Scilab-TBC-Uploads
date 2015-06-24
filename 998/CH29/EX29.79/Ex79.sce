//Ex:79
clc;
clear;
close;
R=6378;// Radius of earth in km
H=10000;// in km
A=(R/(R+H));
A1=(acos(A))*(180/%pi);
y_m=180-2*A1;
y_m1=ceil(y_m);
u=39.8*10^13;// in N sq.m/kg
a=(R+H)*1000;// in m
p_o=2*%pi*sqrt((a)^3/(u));// orbital period in sec
p_o1=p_o/3600;//  orbital period in hours
t_e=(y_m1/360)*p_o1;// eclipse duration in hours
t_e1=t_e*60;// eclipse duration in min
printf("The eclipse duration=%f hours", t_e);
printf("\n The eclipse duration=%f minutes", t_e1);