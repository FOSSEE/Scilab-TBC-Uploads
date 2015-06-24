//example 17.15
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
q=7.317e5;
c=2350;
Thi=160;
Thd=100;
delT=(75-85)/log(75/85);
mh=q/c/(Thi-Thd);
disp(mh,"mass flow rate of oil in kg/s");
ho=400;
k=0.643;
D=0.025;//diameter
Nu=119;
hi=k/D*Nu;
U=1/(1/hi+1/ho);
L=q/(U*pi*D*delT*10*0.87);
disp(L,"length of exchanger in m");
clear()
