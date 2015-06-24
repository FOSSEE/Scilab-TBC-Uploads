//Example 6.11//ratio and phase errors
clc;
clear;
Kt=60.476;//TRANSFORMATION RATIO
Knom=Kt;//
Vs=63;//in volts
Rs=2;//in ohms
Xs=1;//IN OHMS
va=100+%i*200;//burden in VA
y=atand((imag(va)/(real(va))));//in degree
Zs= sqrt((imag(va)^2+real(va)^2));//magnitude
Kact=Kt+((Kt*(Rs*cosd(y)+Xs*sind(y))))/Zs;//actual turn ratio
Pr=(Knom-Kact)/Kact;//percentage ration error
pa=((Xs*cosd(y)-Rs*sind(y))/Zs)*(180/%pi);//change in phase angle error in degree
disp(Pr*100,"percetage ratio error is")
disp(pa,"phase error in degree is")
