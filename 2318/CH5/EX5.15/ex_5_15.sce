//Example 5.15 //loss
clc;
clear;
close
f=50;//Hz
k=2.3*10^-2;//
x=1.7;//
wi=0.6;//W
bm=0.5;//Wb/m^2
kd=((wi-(k*bm^x*f))/(bm^2*f^2));//
f1=20;//Hz
bm1=1;//
wi1=((k*bm1^x*f1)+(kd*bm1^2*f1^2));//
disp(wi1,"loss is ,(W)=")
