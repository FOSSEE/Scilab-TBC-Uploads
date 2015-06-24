//Example 4.30//illumination on surface
clc;
clear;
close;
format('v',6)
ef=17.4;//in mumens/watt
dp=1.2;//depreciation factor
wlf=1.3;//waste light factor
uf=0.4;//utiliazation factor
l=50;// in meters
b=16;// in meters
n=16;// no. of lamps
lw=1000;// mscp in watts
a=l*b;//arean in m^2
tl=n*lw*ef;///total lumens
lwp=((tl*uf)/(wlf*dp));//lumens reaching on the working plane
e=lwp/a;//illumination on the surface in lumens/m^2
disp(e,"illumination on the surface in lumens/m^2")
