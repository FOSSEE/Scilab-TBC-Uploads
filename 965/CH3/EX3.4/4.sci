clc;
clear all;
disp("Sphere Surface temperature")
r=1.6/2;//m

H=5.5;//m
k=0.51;// W/(m*C)
Qg=580;// W

te=6;// degree C
Sfc=4*3.1416*r/(1-r/(2*H));
//Qg=k*Sfc*(t-te);
t=Qg/(k*Sfc)+te;
disp("degree C",t,"surface temperature of sphere, t =")
