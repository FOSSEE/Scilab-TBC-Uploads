//Example 4.10
clc;
clear;
close;
format('v',9);
//Given data :
S1=0.81;//sp. gravity
S2=1.2;//sp. gravity
S3=13.6;//sp. gravity
h3=200/1000;//m
h2=50/1000;//m
h1=100/1000;//m
w=1000;//kg/m^3
pAB=((h1*(S2-S1)+h2*(S3-S1)-h3*S1))*w;//Kg/m^2
disp(pAB,"Pressure difference between the two vessel in kg/m^2: ");
