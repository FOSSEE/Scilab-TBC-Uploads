//Example  7.1// width and length
clc;
clear;
close;
format('v',6)
vph=400;//phase voltage in volts
n=3;//number of phase
kw=36;//power in kW
r=((vph^2)/(n*((kw*10^3)/n)));//resistance in ohms
p=1.016*10^-6;//resitivity
t=0.3;//thickness in mm
x=(((r*t*10^-3)/(p)));//variable
t1=1000;//initial temperature in degree celsius
t1k=273+t1;//initial temperature in kelvin
t2=650;//final temperature in degree celsius
t2k=273+t2;//final temperature in kelvin
h=((3*10^4)*((t1k/1000)^4-(t2k/1000)^4));//W/m^2
y=((kw*10^3)/(3*2*h));//variable
l=sqrt(x*y);//length in meter
w=y/l;//width in meter
disp(l,"length is,(m)=")
disp(w*10^3,"width is,(mm)=")
