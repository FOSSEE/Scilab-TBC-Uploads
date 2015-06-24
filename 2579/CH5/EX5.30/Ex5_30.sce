//Ex:5.30
clc;
clear;
close;
ht=4000;// transmeter height in m
hr=7000;// receiver height in m
Los=4.12*(sqrt(ht)+sqrt(hr));// line of sight range in km
printf("The line of sight range = %f km", Los);