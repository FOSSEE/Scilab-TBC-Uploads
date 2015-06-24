clc;
clear;
W=2.45*(10^(-2));//N
D=3.8*(10^(-2));//m
U=12;//m/s

//W=L
d=1.23;//kg/(m^3)
W=0.5*d*(U^2)*(D^2)*%pi*CL/4;
CL=2*W/(d*(U^2)*%pi*(D^2)/4);
//using this value of CL, omega*D/(2*U)=x is found as 
x=0.9;
omega=2*U*x/D;//rad/sec
angvel=omega*60/(2*%pi);//rpm; where angvel is angular velocity
disp("rpm",angvel,"The angular velocity=")