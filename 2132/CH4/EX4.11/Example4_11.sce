//Example 4.11
clc;
clear;
close;
format('v',9);
//Given data :
S1=1.9;//sp. gravity
S2=1.2;//sp. gravity
S3=0.79;//sp. gravity
h2=545/1000;//m
h1=750/1000;//m
h3=h1-h2;//m
w=1000*9.81;//N/m^3
pAB=(h1*S1-h2*S2-h3*S3)*w;//N/m^2
disp(pAB,"Pressure difference between the two vessel in N/m^2: ");
