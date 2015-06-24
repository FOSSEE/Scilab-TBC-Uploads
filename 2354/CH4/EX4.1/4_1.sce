//example 4.1
clc; funcprot(0);
// Initialization of Variable
V=0.5;//volume
P1=1;//pressure
P2=0.5;
vf1=1.0432/1000;
vf2=1.0582/1000;
x=0.5;
T1=99.63;
v1=vf1+0.5*(1.694-vf1);
v2=v1;
T2=111.4;//from table
disp(T2,"temperature in degree celcius");
m=V/v1;
mg1=x*m;
disp(mg1,"mass of vapor in kg");
x2=(v1-vf2)/(1.159-vf2);
mg2=x2*m;
disp(mg2,"mass of vapor in kg");
clear()
