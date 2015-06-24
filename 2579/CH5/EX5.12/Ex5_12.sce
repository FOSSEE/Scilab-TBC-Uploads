//Ex:5.12
clc;
clear;
close;
ht=256;// transmeter height in m
hr=25;// receiver height in m
d=4.12*(sqrt(ht)+sqrt(hr));// in km
Rh=4.12*(sqrt(ht));/// radio horizon in km
printf("The radio horizon = %f km", Rh);