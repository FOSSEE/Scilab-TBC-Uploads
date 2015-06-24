//Example 3.37: Insolution resistance of the cable
clc;
clear;
close;
v1=200;//volts
v2=125;//volts
t=30;//seconds
cr=t/(log(v1/v2));//
v21=100;//volts
cr1=t/(log(v1/v21));//
y=cr1/cr;//
x=10;//mega ohms
R=((x/y)-x);//mega ohms
disp(R,"resistance is,(M-ohm)=")
