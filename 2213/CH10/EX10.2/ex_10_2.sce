//Example 10.2:reistance
clc;
clear;
close;
I=[20;40;60;80];//
emf=[215;381;485;550];//in volts
emf2=[202;357;455;516];//
lt=40*9.81;// in N-m
N=600;//rpm
il=lt*(2*%pi*(N/60));//in W
ia=56;//in amperes from curve
va=440;//in volts from graph
tr=va/ia;// in ohms
tm=0.8;//in ohms
er=tr-tm;//in ohms
disp(er,"external resistance to be connected across the motor during break is in ohm")
