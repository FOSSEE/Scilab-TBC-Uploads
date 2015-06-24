//Part B Chapter 4 Example 6
clc;
clear;
close;
L=2.5;//m
P=70*1000;//W
N=250;//rpm
tau_max=55*10^6;//N/m^2
theta=1;//degree
theta=theta*%pi/180;//radian
G=100;//GN/m^2
T=P*60/2/%pi/N;//Nm
d1=(T*16/%pi/(tau_max))^(1/3);//m
d2=(T*32/%pi/(G*10^9*theta/L))^(1/4);//m(Condidering twist 1 degree)
d=max(d1,d2)*1000;//mm
disp("Suitable diameter is "+string(d)+" mm");
