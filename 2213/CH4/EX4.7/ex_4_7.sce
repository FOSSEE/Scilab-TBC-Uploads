//Example 4.7 //lamp efficiency and illumination
clc;
clear;
close;
format('v',7)
p=500;//lamp power in watts
mscp=1250;//
h=2.7;//in meters
ea=(mscp)/(h)^2;//illumination directly below lamp in lux
le=(4*%pi*mscp)/p;//lamp efficiency in lumens/watts
h1=3;//meters
eb=((mscp)/(h^2)*(2.7^3/(h1^2+h^2)^(3/2)));//illumnination at a point 3 meters away on the horizontal plane vertically below the lamp in lux
disp(ea,"illumination directly below lamp in lux")
disp(le,"lamp efficiency in lumens/W")
disp(eb,"illumnination at a point 3 meters away on the horizontal plane vertically below the lamp in lux")
