//example 4.11
clc; funcprot(0);
// Initialization of Variable
P2=5.0;
P1=1.0;
n=1.3;
T1=530;
R=1.986;
u2=131.88;
u1=90.33;
T2=T1*(P2/P1)^(.3/n);
k1=R*(T2-T1)/(1-n)/28.97;//k1=W/m
disp(k1,"W/m in Btu/lb");
k2=k1+u2-u1;//k2=Q/m
disp(k2,"Q/m in Btu/lb");
clear()
