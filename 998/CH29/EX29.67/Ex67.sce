//Ex:67
clc;
clear;
close;
R_e=6378;// in km
H=35786;// in km
E_min=5;// min elevation angle in degree
x=cos(E_min*3.14/180);
R=R_e/(R_e+H);
P=2*asin(R*x);// in radian
a_max=(P)*180/3.14;// in degree
printf("The max coverage angle=%f degree", a_max);