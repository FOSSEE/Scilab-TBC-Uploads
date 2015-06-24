//Example 4.3 //average luminane of the sphere 
clc;
clear;
close;
format('v',6)
d=0.4;//diamter in meter
p=0.20;//in percentage absorption
F=4850;// lumens
Fe=(1-p)*F;// flux emitted by the globe in lumens
sa=4*%pi*(d/2)^2;//surface area in m^2
als=Fe/sa;//average lumninance of sphere in lumens/m^2
disp(als,"average lumninance of sphere in lumens/m^2")
