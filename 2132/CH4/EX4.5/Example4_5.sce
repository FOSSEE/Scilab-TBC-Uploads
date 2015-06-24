//Example 4.5
clc;
clear;
close;
format('v',8);
//Given data :
S1=1.2;//sp. gravity
S2=13.6;//sp. gravity
w=1000;//kg/m^3
h2=50/1000;//m
h1=200/1000;//m
pa=w*(S2*h1-S1*h2);//kg/m^2
disp(pa,"Pressure in the pipe in kg/m^2: ");
disp(pa*9.81,"Pressure in the pipe in Pa: ");
