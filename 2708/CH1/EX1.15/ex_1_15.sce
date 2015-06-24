//Example 1.15 // flim thickness
clc;
clear;
//given data :
u=1.5;//referactive index of oil
i=30;// incident angle in degree
i=i*%pi/180;//to convert in radian
n=8;//8th dark band
w=5890D-10;// wavelength in m
r=sqrt(1-(sin(i)/u)^2);//cos of received angle
t=n*w/(2*u*r);//formula of thickness
t=t*1D3;//to convert in mm
disp(t*1D-3,"flim thickness in m")
