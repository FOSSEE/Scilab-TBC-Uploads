//example 17.14
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
k=0.625;
D=0.025;
Nu=90;
ho=40;
q=8524;
delT=(59.8-30)/log(59.8/30);
hi=Nu*k/D;
U=1/(1/hi+1/ho);
L=q/(U*pi*D*delT);
disp(L,"length of exchanger in m");
clear()
