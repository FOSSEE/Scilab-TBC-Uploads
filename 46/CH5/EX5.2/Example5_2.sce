//Example 5.2
clear
clc
tau=0.1;//min
xs=100;//Fahrenheit
ys=100;//Fahrenheit
A=2;//Fahrenheit
f=10/%pi;//cycles/min
w=2*%pi*f;//rad/min
//From Eq.(5.25), the amplitude of the response and the phase angle are calculated;thus
disp('Fahrenheit',A/sqrt((tau*w)^2+1),'A/sqrt((tau*w)^2+1)=')
phi=atan(-w*tau);//radians
phi=phi*180/%pi;//degrees
disp('degrees',phi,'phase lag=')
t=0:0.01:1;
//From Eq.(5.19), the input of the thermometer is  therefore
disp("X(t)=2*sin(20*t)");
//or
xt=xs+2*sin(20*t);
//The response of the thermometer is therefore
disp("Y(t)=0.8944*sin(20*t-63.4349)")
//or
yt=ys+0.8944*sin(20*t-63.4349);
Lag=phi/(360*f);//min
Lag=abs(Lag);//min
disp('min',Lag,'Lag=')
clf;
plot(t,yt)
plot(t,xt)
xlabel('time')
ylabel('x(t) , y(t)')
title('x(t) , y(t) Vs time')
xgrid


