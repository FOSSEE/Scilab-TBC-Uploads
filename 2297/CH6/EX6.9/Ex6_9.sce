//Example  6.9// speed
clc;
clear;
close;
format('v',6)
i1=50;//primary current in amperes
i2=i1/(sqrt(2));//secondary current in amperes
r1=0.2;//primary resistance in ohms
v1=220;//primary voltage in volts
eb1=((v1-(i1*r1)));//primary emf in volts
eb2=((v1-(i2*r1)));//secondary emf in volts
n1=1000//primary speed in rpm
n2=(n1*(eb2/eb1)*(i1/i2));//seconadry speed in rpm
disp(n2,"speed is,(rpm)=")
