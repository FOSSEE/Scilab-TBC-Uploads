//Example 4.13
clc;
clear;
close;
format('v',4);
//Given data :
S1=1.25;//sp. gravity
S2=1.05;//sp. gravity
S3=0.79;//sp. gravity
h=30/1000;//m
w=1000;//kg/m^3
//pA=pB
h=(0.15*w*S2-S1*w*0.15)/(S3*w-w*S2);//m
h=h*1000;//mm
disp(h,"Reading of manometer in mm : ");
