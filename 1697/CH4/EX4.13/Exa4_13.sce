//Exa 4.13
clc;
clear;
close;
//given data :
n=8;//no. of elements
BWFN=45;//in degree
theta=45;//in degree
f=40;//in MHz
f=f*10^6;//in Hz
//Formula : theta=2*asin(2*%pi/(n*dr))
dr=(2*%pi/n)/sin((theta/2)*(%pi/180));//
c=3*10^8;//speed of light in m/s
lambda=c/f;//in m
d=dr*lambda/(2*%pi);//in m
disp(d,"Distane in meter :");