// calculate error interms of pressure
clc;
P=8*133;
h=P/(800*9.81);
d=2;
D=50;
hn=h/(1+(d/D)^2);
e=(hn-h)/h*100;
eP=0.8*1000*9.81*(hn-h);
disp(eP,'error interms of pressure(N/m2)')