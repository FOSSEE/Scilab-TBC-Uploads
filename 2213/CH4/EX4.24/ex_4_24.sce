//Example 4.24//number ,loaction and wattage 
clc;
clear;
close;
format('v',5)
ef=40;//efficiency in lumens/watt
mil=80;// minimum illumination in lumens/m^2
dp=0.8;//depreciation factor
uf=0.4;//utiliazation factor
l=100;// in meters
b=10;// in meters
a=l*b;//arean in m^2
tl=a*mil;///total lumens
glr=tl/(uf*dp);//gross illumination required
twr=glr/ef;//total wattage required
disp(42,"number of lamps of 150watt rating in 2 rows")
disp(twr,"total wattage in watts")
