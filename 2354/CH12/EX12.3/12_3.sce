//example 12.3
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
rho=999.0;
Q=0.6/1000;
A1=pi*0.016^2/4;
A2=pi*0.005^2/4;
p1=464*1000;
p2=0;
Ww=0.03;
Wn=1;
mdot=rho*Q;
V1=Q/A1;
V2=Q/A2;
Fa=mdot*(V1-V2)+Wn+Ww+p1*A1;
disp(Fa,"Force in N");
clear()
