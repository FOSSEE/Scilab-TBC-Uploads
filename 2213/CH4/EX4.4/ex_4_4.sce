//Example 4.4 //illumination
clc;
clear;
close;
format('v',7)
P=20;//filament power in watts
h=5;//height in meters
d=4;//diamter in meter
p=0.50;//in percentage absorption
ef=0.89;//efficiency in watts
cpl=P/ef;//candle power of lamp in CP
Lop=4*%pi*cpl;//lu,inous output in lumens
Fe=(1-p)*Lop;// flux emitted by the globe in lumens
sa=%pi*(d/2)^2;//surface area in m^2
als=Fe/sa;//average lumninance of sphere in lumens/m^2
disp(als,"average lumninance of sphere in lumens/m^2")
