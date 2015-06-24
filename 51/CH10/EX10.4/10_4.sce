clc;
clear;
y=5;//ft
angle=40;//degree
l=12;//ft
rate=1.4;//ft per 1000 ft of length
Q=10;//m^3/sec
//A=(l*y)+(y*y/tan(angle*%pi/180)) ft^2
bw=l*1/3.281;//m; where bw=bottom width 3.66
//P=bw(2*y/sin(angle*%pi/180)) m
//Rh=A/P
n=0.03;
c1=1/tan(angle*%pi/180);//1.19
c2=(Q*n/((rate/1000)^0.5))^3;//515
c3=2/sin(angle*%pi/180);//3.11
fn=poly([(-c2*bw*bw) (-c2*2*c3*bw) (-c2*c3*c3) 0 0 (bw^5) (5*c1*bw^4) (10*(c1^2)*(bw^3)) (10*(c1^3)*(bw^2)) (5*(c1^4)*(bw)) (c1^5)],"y","c");
r=roots(fn);
disp("m",r(1),"The depth of the flow=")