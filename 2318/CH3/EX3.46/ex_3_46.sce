//Example 3.46:insulation resistance
clc;
clear;
close;
v=170;//volts
e=250;//volts
t=20;//seconds
cr1=t/(log(e/v));//
v1=110;//volts
e=250;//volts
t=20;//seconds
cr2=t/(log(e/v1));//
x=cr1/cr2;//
r1=25;//M-ohm
r2=70;//M-ohm
y=((r1*r2)/(r1+r2));//
R=((x*r2*(r1*r2))-(r2*r1*r2))/((r2*(r1+r2))-((r1*r2*x)));//
disp(R,"resistance is ,(M-ohm)=")
