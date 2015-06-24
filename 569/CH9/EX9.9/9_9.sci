// calculate Length of scale angle to which tube is incliend to horizontal
clc;
P=500*9.81;
g=9.81;
d=8;
a= (%pi/4)*d^2;
A=1200;
dm=0.8*10^3;
hn=P/(g*dm*(1+(a/A)));
disp(hn,'Length of scale(m)')
R=0.6;
P1=50*9.81;
th=asind(P1/(g*dm*R*[1+(a/A)]));
disp(th,'angle to which tube is incliend to horizontal(degree)')