// Example 2.16:ESI relative refractive index
clc;
clear;
close;
h=1.190;//micro meter
sp=5.2;//in micro meter
n=1.5;//refractive index
alpha2=1.820*sp;//in micro meter
desi1=(0.293/(n)^2);//
desi2=desi1*(1.19/alpha2)^2;//
disp(desi2*100,"ESI relative refrative index difference in percentage is")
//answer is wrong in the textbook
