clear;
clc;
close;
t=0:1/100:10;
w=1;
theta=%pi/3;
T=2*%pi/w;
x=cos(t*w+theta);
y=cos((t+T)*w+theta);
if ceil(x)==ceil(y) then
    disp('cos(wo*t+theta) is periodic with T=2*pi/W0')
else
    disp('nonperiodic')
end