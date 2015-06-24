//Example  6.8// resistance and speed
clc;
clear;
close;
format('v',7)
v1=240;//primary voltage
r1=0.2;//primary resistance in ohm
i1=40;//primary current in volts
eb1=(v1-i1*r1);//primary emf
n11=1800;//number of turns on primary side in rpm
n21=1600;//number of turns on secondary side in rpm
i2=10;//secondary current in amperes
x=((n21/n11)*(i2/i1)*eb1);//variable
r=((v1-(i2*r1))-x)/i2;//resistance in ohm
disp("part (a)")
disp(r,"resistance to be added is,(Ohm)=")
disp("part (b)")
n11=1800;//number of turns on primary side
n21=900;//number of turns on secondary side in rpm
i2=60;//secondary current in amperes
x=((n21/n11)*(1.18)*eb1);//variable
r=((v1-(i2*r1))-x)/i2;//resistance in ohms
disp(r,"resistance to be added is,(Ohm)=")
eb2=228;//secondary emf in volts
eb1=232;//primary emf in volts
p1=100;//primary power in watt
p2=118;//secondary power in watt
n2=((eb2/eb1)*(p1/p2)*n11);//speed in rpm
disp(ceil(n2),"speed is,(rpm)=")
