//Example 1.16 // order of dark band
clc;
clear;
//given data :
u=4/3;//referactive index of soap flim
t=1.5D-6;//thickness of soap flim
i=60;//incident angle in degree
i=i*%pi/180;// incident angle in radian
w=5D-7;// wavelength in m
r=sin(i)/u;//sin of refracted angle
R=asin(r);//refracted angle in radian
n=2*u*t*cos(R)/w
n=floor(n)
disp(n,"order of dark band")
