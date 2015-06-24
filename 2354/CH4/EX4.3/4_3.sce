//example 4.3
clc; funcprot(0);
// Initialization of Variable
V=10.0;//ft^3
v1=26.8;//ft^3/lb
u1=1077.6;//btu/lb
u2=1161.6;//Btu/lb;
m=V/v1;
W=-m*(u2-u1);
disp(W,"Work done in Btu");
clear()
