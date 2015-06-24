//Example 4.11 //total flux and average luminane of the sphere 
clc;
clear;
close;
format('v',6)
th=15;//in degree
l=400;//candela
d=8;// meter
p=0.80;//in percentage absorption
Fe=p*4*%pi*l;// flux emitted by the globe in lumens
dA=d*tand(th/2);//diameter in degree
sa=%pi*(dA)^2;//surface area in m^2
als=Fe/sa;//average lumninance of sphere in lux
disp(Fe,"total flux in lumens")
disp(als,"average lumninance of sphere in lux")
