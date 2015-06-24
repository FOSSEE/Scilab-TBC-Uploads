clc;
alpha=88.8;
L=0.05;
lambda=40;
Bi=alpha*L/lambda;
//p1L*[cos(p1L)/sin(p1L)]=1-Bi;
//from trial and error;
p1L=0.57;

tou=20*60;
rho=7600;
c=0.5*10^3;
R=0.05;
F0=lambda*tou/(rho*c*R^2);

tF=20;
ti=500;
a=(sin(p1L)-p1L*cos(p1L))*(2*%e^[-(p1L)^2*F0])/(p1L-sin(p1L)*cos(p1L));
tc=tF+a*(ti-tF);
disp("temperature of center is:")
disp("C",tc)

//part b
tc=tF+[%e^(-3*Bi*F0)]*(ti-tF)
disp("temperature of center by newtonian cooling is:")
disp("C",tc)
