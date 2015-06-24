//Example 4.12
clc;
clear;
close;
format('v',9);
//Given data :
S1=0.005;//sp. gravity
S2=0.79;//sp. gravity
S3=13.6;//sp. gravity
h=30/1000;//m
w=1000*9.81;//N/m^3
pAB=h*(S3-S2)*w;//N/m^2
disp(pAB,"Pressure difference between the two vessel in N/m^2: ");
