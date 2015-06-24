// calculate value of counter weight required
clc;
P=981;
g=9.81;
d=500*10^-3;
A= (%pi/4)*(10*10^-3)^2;
R=275*10^-3;
th=30;
W=A*d*P/(2*g*R*sind(th));
disp(W,'value of counter weight required(kg)')