//Ex 3.1
clc;clear;close;
format('v',5);
N=100;//turns
R=1500;//rpm(Rotation)
B=0.05;//T(Magnetic field)
A=40;//cm^2(Cross sectional area)
f=R/60;//Hz
theta=30;//degree
disp(f,"(a) Frequency(Hz)");
Period=1/f;//seconds
disp(Period,"(b) Period(seconds)");
Em=2*%pi*B*(A/10^4)*N*f;//V
disp(Em,"(c) Maximum value of gnerated emf(V)");
e=%pi*sind(theta);//V
disp(e,"(d) Gnerated emf after rotation(V)");
