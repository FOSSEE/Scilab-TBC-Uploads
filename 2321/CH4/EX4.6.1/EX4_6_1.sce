//Example No. 4.6.1
clc;
clear;
close;
format('v',6);

l=1;//m
Prad=4;//W
f=1.5;//MHz
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m
//here l/lambda<1/50 tells us it is a Hertzian monopole antenna
h=1;//m
Rr=40*%pi^2*(h/lambda)^2;//mΩ
Io=sqrt(2*Prad/Rr);//A
disp(Io,"Current required in A : ");
