//Example 4.8// height and illumination
clc;
clear;
close;
format('v',7)
l=100;//illumination at a point directly below the lamp in lumens/m^3
cp=256;//
h1=1.2;//in meters
h=sqrt(cp/l);//height in meters
x=sqrt(h^2+h1^2);//
x1=h/x;//
eb=((cp)/(h^2))*(x1)^3;//illumnination at a point 1.2 meters away on the horizontal plane vertically below the lamp in lux
disp(h,"height in meters is")
disp(eb,"illumnination at a point 1.2 meters away on the horizontal plane vertically below the lamp in lux")
