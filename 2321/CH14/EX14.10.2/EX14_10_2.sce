//Example No. 14.10.2
clc;
clear;
close;
format('v',6);
ht=100;//feet(transmitter height)
hr=50;//feet(receiver height)
d=1.4142*[sqrt(ht)+sqrt(hr)];//miles(Range)
disp(d,"Radio horizon in miles : ");
