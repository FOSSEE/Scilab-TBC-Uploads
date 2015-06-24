//Example No. 14.10.3
clc;
clear;
close;
format('v',6);
ht=80;//m(transmitter height)
hr=50;//m(receiver height)
d=4.12*[sqrt(ht)+sqrt(hr)];//km(Range)
disp(d,"Maximum distance in km : ");
