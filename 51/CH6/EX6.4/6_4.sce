clc;
clear;
p1=30;//kPa
d=1000;//kg/(m^3)
r1=1;//m
r2=0.5;//m
//applying energy equation between points (1) and (2) and using the equation V^2=16*(r^2)
V1=(16*(r1^2))^0.5;//m/sec
V2=(16*(r2^2))^0.5;//m/sec
p2=((p1*1000)+(d*((V1^2)-(V2^2)))/2)/1000;//kPa
disp("kPa",p2,"The pressure at point (2) =")
