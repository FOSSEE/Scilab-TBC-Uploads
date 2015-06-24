clc();
clear;
//To calculate the bandwidth
lambda=600*10^-9;
mew=2;
teta=0.025;                              //wedge-angle
x=(lambda/(2*mew*sind(teta)))*10^2       //bandwidth
printf("The bandwidth is %f cm",x);