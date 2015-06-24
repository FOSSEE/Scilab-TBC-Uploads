//Example No. 10.8.1
clc;
clear;
close;
format('v',8);
f=10;//MHz(Frequency)
c=3*10^8;//m/s(Speed of light)
lambda=c/(f*10^6);//m(Wavelength)
d0=10^-3*lambda;//m(spacing)
Lo=1*lambda;//m(Length)
fi=%pi;fi0=0;//radian
r0=d0/2;//m
disp("Part (i)");
//R=r0*exp(a*fi-a*fi0);//m
//a=sqrt(1/Lo^2/(R-r0)^2-1);//per adian
a=1.166;//rad^-1(by above equation)
disp(a,"Rate of spiral in rad^-1 : ");
R_BY_lambda=r0/lambda*exp(a*2*%pi);//m(Radius/wavelength)
disp("Radius of terminal point is "+string(R_BY_lambda)+"*lambda");
disp("Part (ii)");
R=r0*exp(a*2*%pi);//m(Radius)
disp(R,"Radius at terminal point in meter : ");
