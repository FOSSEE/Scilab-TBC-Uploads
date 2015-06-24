//Example 8.19.3: torque developed,speed and input power factor
clc;
clear;
close;
//given data :
format('v',7)
v=208;//in volts
f=50;//in Hz
ra=0.5;//in ohms
rf=345;//in ohms
kv=0.71;//in V/A-rad/sec
alpha=45;//in degree
ia=55;//in amperes
If=((2*sqrt(2)*v*cosd(0))/(%pi*rf));//in amperes
t=kv*If*ia;//in  N/m
disp("part (a)")
disp(t,"torque in N/m is")
disp("part (b)")
eb=((2*sqrt(2)*v*cosd(alpha))/%pi)-(ia*ra);//in volts
w=eb/(kv*If);//in rad/sec
N=w/(2*%pi);//rps
disp(N*60,"speed in rpm")
//speed is calculated wrong in the textbook
disp("part (c)")
ea=132.4;//in volts
ef=187.3;//in volts
pi=(ea*ia)+(ef*If);//in watts
Isrms=sqrt((ia)^2+(If)^2);//in amperes
va1=Isrms*v;//in VA
Pf=pi/va1;//
disp(Pf,"power factor (lagging) is")
