//Example 4.4
clc;
clear;
close;
format('v',7);
//Given data :
S=0.9;//sp. gravity of liquid
Sm=13.6;//sp. gravity of mercury
S1=Sm/S;//sp. gravity
w=S*9.81;//kN/m^3
h2=500/1000;//m
h1=300/1000;//m
a_BY_A=1/80;//ratio of area
pa=w*(h2*[(S1-1)*a_BY_A+S1]-h1);//kPa
disp(pa,"Pressure in the pipe in kPa: ");
