//Ex:5.9
clc;
clear;
close;
ht=100;// transmeter height in m
hr=10;// receiver height in m
d=4.12*(sqrt(ht)+sqrt(hr));// line of sight range in km
printf("The line of sight range = %f km", d);