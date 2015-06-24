//Ex:75
clc;
clear;
close;
R=6370;// Radius of earth in km
x=(R/(R+R));
y=(acos(x))*(180/%pi);
d_mx=2*2*R*sin(y*%pi/180);
R_H=42164;// in km
x1=(R/(R_H));
y1=(acos(x1))*(180/%pi);
d_mx1=2*R_H*sin(y1*%pi/180);
printf("The max line of sight distance=%d km", d_mx);
printf("\n The max line of sight distance for geostationary satellites=%f km", d_mx1);