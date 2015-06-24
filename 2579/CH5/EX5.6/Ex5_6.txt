//Ex:5.6
clc;
clear;
close;
ht=169;// transmeter height in m
hr=16;// receiver height in m
d=4.12*(sqrt(ht)+sqrt(hr));// in km
Rh=4.12*(sqrt(ht));/// radio horizon in km
printf("The radio horizon = %f km", Rh);