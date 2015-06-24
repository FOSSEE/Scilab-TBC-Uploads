//Example 4.27//number  and wattage 
clc;
clear;
close;
format('v',6)
h=5;// in meters
el=100;//in lux
ef=16;//efficiency in lumens/watt
dp=0.2;//depreciation factor
uf=0.4;//utiliazation factor
l=60;// in meters
b=15;// in meters
a=l*b;//arean in m^2
glr=(a*el)/(uf*(1-dp));//gross illumination required
n=12*3;//total no. of 
twr=glr/ef;//total wattage required
wec=twr/n;//wattage of each lamp
disp(n,"number of lamps of 150watt rating in 2 rows")
disp(" wattage of each lamp "+string(wec)+" watts equivalent to 500  watts")
