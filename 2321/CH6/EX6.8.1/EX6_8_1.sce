//Example No. 6.8.1
clc;
clear;
close;
format('v',5);
n=4;//(No. of elements)
//d=lambda/2;(spacing)
dBYlambda=1/2;//(spacing/wavelength)
theta=0;//degree(angle)
//Beta=2*%pi/lambda
disp("Part (i)");
Beta_into_lambda=2*%pi;//(Coefficient)
//alfa=-Beta*d
alfa=-Beta_into_lambda*dBYlambda;//radian(Progressive phase shift)
alfa=alfa*180/%pi;//degree(Progressive phase shift)
disp(alfa,"Progressive phase shift(degree) ");
disp("Part (ii)");
N=1:3;//as N=4 is not allowed
theta01=acosd(1-N(1)/n/dBYlambda);//degree(angle)
theta02=acosd(1-N(2)/n/dBYlambda);//degree(angle)
theta03=acosd(1-N(3)/n/dBYlambda);//degree(angle)
disp(theta03,theta02,theta01,"Null directions, theta01, theta02 & theta03 in degree are :  ");
disp("Part (iii)");
m=0:1;//as m=2 & onwards is not allowed
theta0=acosd(1-m(1)/dBYlambda);//degree(angle)
theta1=acosd(1-m(2)/dBYlambda);//degree(angle)
disp(theta1,theta0,"Maxima directions, theta0, theta1 in degree are :  ");
disp("Part (iv)");
FNBW=2*acosd(1-1/n/dBYlambda);//degree(FNBW)
disp(FNBW,"FNBW in degree :  ");
disp("Part (v)");
HPBW=2*acosd(1-1.391/n/%pi/dBYlambda);//degree(HPBW)
disp(HPBW,"HPBW in degree :  ");
