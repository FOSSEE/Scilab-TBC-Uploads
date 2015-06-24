//Example 4.23//average illumination
clc;
clear;
close;
format('v',5)
dp=1.2;//depreciation factor
uf=0.6;//utiliazation factor
l=15;// in meters
b=6;// in meters
n=20;// no. of lamps
lw=250;// mscp in watts
a=l*b;//arean in m^2
tl=n*lw*4*%pi;///total lumens
lwp=((tl*uf)/dp);//lumens reaching on the working plane
e=lwp/a;//illumination on working plane in lux
disp(e,"illumination on working plane in lux")
