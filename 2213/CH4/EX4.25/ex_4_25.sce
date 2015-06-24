//Example 4.25//number ,rating and disposition of lamps
clc;
clear;
close;
format('v',6)
h=4;//in meters
wp=75;//in lux
ef=14;//efficiency in lumens/watt
dp=0.2;//depreciation factor
uf=0.5;//utiliazation factor
l=72;// in meters
b=15;// in meters
a=l*b;//arean in m^2
mf=1-dp;//maintenance factor
glr=(a*wp)/(uf*mf);//gross illumination required
twr=glr/ef;//total wattage required
wec=twr/80;//wattage of each lamps
disp(80,"number of lamps of 150watt rating in 2 rows")
disp(" wattage of each lamp "+string(wec)+" watts equivalent to 200  watts")
