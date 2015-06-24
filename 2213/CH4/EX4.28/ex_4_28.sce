//Example 4.28//number ,spacing,mounting height and total wattafe
clc;
clear;
close;
format('v',6)
h=5;// in meters
el=120;//in lux
ef=40;//efficiency in lumens/watt
tw=80;//in watts
df=1.4;//depreciation factor
uf=0.5;//utiliazation factor
l=30;// in meters
b=15;// in meters
a=l*b;//arean in m^2
glr=(a*el*df)/(uf);//gross lumens required
twr=glr/ef;//total wattage required
nt=twr/tw;//no. of tubes required
disp(twr,"total wattage required in watts")
disp(" number of tubes required is "+string(nt)+"  equivalent to 48 tubes")
