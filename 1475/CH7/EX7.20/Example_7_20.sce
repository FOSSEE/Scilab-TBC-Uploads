// Example 7.20 Calculate a number which will the percentage change in volume traffic
clc;
clear;
Q=[1246 1125 4794];
Qn=[1206 981 4229];
W=[776 252 562];
QR=(Qn./Q)*100;
QI=sum(QR.*W)/sum(W);
Po=W./Q;
LQI=sum(Qn.*Po)*100/sum(W);
disp(LQI,"Laspeyres Quantity Index ",QI,"Quantity Index number");
