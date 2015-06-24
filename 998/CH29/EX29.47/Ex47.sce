//Ex:47
clc;
clear;
close;
m=100;//mass in kg
v=8000;//velocity in m/s
r=6370*10^3;//radius of earth in m
h=200*10^3;//height above the earth surface in m
c_f=(m*v^2)/(r+h);//centrifugal force in newtons
printf("The centrifugal force=%d newtons",c_f);