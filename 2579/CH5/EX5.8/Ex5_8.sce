//Ex:5.8
clc;
clear;
close;
ht=100;// transmeter height in m
hr=50;// receiver height in m
d=1.4142*(sqrt(ht)+sqrt(hr));// max range in miles
printf("The max range = %f miles", d);