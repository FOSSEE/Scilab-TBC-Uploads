//Example 4.14 //illumination under each lamp and midway between lamps
clc;
clear;
close;
format('v',5 )
CP=100;//
h=6;//in meter
d=16;// meter
x=sqrt(h^2+d^2);//
em=2*((CP/h^2)*(h/(d-h))^3);//illumination in the middle in lux
ee=((CP/h^2)*(1+(h/x)^3));//illumination iunder each lamp in lux
disp(ee,"illumination under each lamp in lux")
disp(em,"illumination in the middle in lux")
