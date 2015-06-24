//Example 4.14
clc;
clear;
close;
format('v',9);
//Given data :
S1=1;//sp. gravity of water
S2=1;//sp. gravity of water
S3=0.9;//sp. gravity of oil
h3=100/1000;//meter
w=9.81*1000;//N/m^3
pAB=w*(h3-h3*S3);//N/m^2
disp(pAB,"Difference of pressure in N/m^2 or Pa : ");
