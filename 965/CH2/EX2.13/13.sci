clc;
clear all;
disp("pipe location distance")
L=1.2;//m thickness of wall
// temperature of wall surfaces
t1= 200;// degree C
t2=60;// degree C
t= 120;// degree C
//k= 0.28*(1+0.036*t);// thermal conductivity relation 
// rate of heat transfer Q= km*(A/L)*(t1-t2)
// 0.28*(1+(0.036/2)*(200+60))*(A/1.2)*(200-60)=0.28*(1+(0.036/2)*(200+120))*(A/x)*(200-120)
x=151.42/185.54;//m
disp("m",x,"the distance at which the pipe should be imbedded from hot surface = ")



