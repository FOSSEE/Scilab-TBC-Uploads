//Example 4.17//distance
clc;
clear;
close;
format('v',5) 
cp=500;//cp
h=4;//in meter
x=((2*cp*h^3)/h^2);//
y=((cp*h^3)/h^2);//
y1=cp/h^2;//
y2=y/2;//
y21=y1/2;//
d=sqrt((((x-y2)/y21)^(2/3))-h^2)*2.29;//
disp(d,"distance is,(m)=")

