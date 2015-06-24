//Example No. 14.10.1
clc;
clear;
close;
format('v',7);
ht=100;//m(transmitter height)
hr=100;//m(receiver height)
d=3.57*[sqrt(ht)+sqrt(hr)];//km(Range)
disp(d,"Range of space wave propagation in km : ");
