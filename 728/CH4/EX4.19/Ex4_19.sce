//Caption:Calculate the amount of attenuation if signal of frequency is 6GHz
//Exa:4.19
clc;
clear;
close;
u=4*%pi*10^-7;
e=8.85*10^-12;
c=3*10^10;//in cm/s
f=6*10^9;//in Hz
a=1.5;//in cm
b=1;//in cm
//For TE10 mode:
m=1;
n=0;
wl_c=2*a;
f_c=c/wl_c;
t_1=(m*%pi/a)^2;
t_2=(n*%pi/b)^2;
t_3=(((2*%pi*f)^2)*u*e);
a=sqrt(t_1+t_2-t_3);//in neper/m
disp(a*20/log(10),'Attenuation (in dB/m) =');