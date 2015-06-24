//Example No. 10.8.2
clc;
clear;
close;
format('v',5);
fU=900;//MHz(Upper frequency)
fL=450;//MHz(Lower frequency)
c=3*10^8;//m/s(Speed of light)
lambdaU=c/(fU*10^6);//m(Upper wavelength)
lambdaL=c/(fL*10^6);//m(Lower wavelength)
Exp_ratio=4;//expansion ratio
a=log(Exp_ratio)/(2*%pi);//rad^-1////rate of spiral
Beta=atand(1/a);//degree
r0=lambdaU/4;//meter////minimum radius
disp(r0*100,"Minimum radius in cm : ");
R=lambdaL/4;//meter////minimum radius
disp(R*100,"Maximum radius in cm : ");
fi_m=log(R/r0)/a;//radian
fi_m=fi_m*180/%pi;//degree
disp(fi_m,"Φm in degree is ");
N=1/2;//for Φm=180;//degree
disp(N,"Number of turns, N is  ");
