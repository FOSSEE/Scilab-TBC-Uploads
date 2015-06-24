//Example 4.15 //illumination under each lamp and midway between lamps
clc;
clear;
close;
format('v',7 )
CP=800;//
h=10;//in meter
d=12;// meter
x=sqrt(h^2+d^2);//
x1=sqrt(h^2+(d/2)^2);//
em=((CP/h^2)*(1+(h/x)^3+(h/x)^3));//illumination iunder each lamp in lux
ee=2*((CP/h^2)*(h/x1)^3);//illumination at the centrelamp in lux
disp(em,"illumination under each lamp in lux")
disp(ee,"illumination in the middle in lux")
