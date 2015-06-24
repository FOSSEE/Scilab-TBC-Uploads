//Example 4.16 //illumination  midway between lamps
clc;
clear;
close;
format('v',5 )
CP=400;//
h=10;//in meter
d=20;// meter
x=sqrt(d^2-h^2);//
ee=4*((CP/h^2)*(h/x)^3);//illumination at the centrelamp in lux
disp(ee,"illumination in the middle in lux")
