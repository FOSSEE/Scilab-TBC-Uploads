//Example 6.7(a)

clear;

clc;

IA=19.6*10^(-6);

Cc=30*10^(-12);

SR=0.633*10^6;

R1=3*10^3;

R2=12*10^3;

A0=-(R2/R1);

b=R1/(R1+R2);

a0=2*10^5;

ft=1*10^6;

ro=100;

Vim=-0.5;

tau=1/(2*%pi*b*ft);

Vomcrit=SR*tau;

Voinf=A0*Vim;

V1=Voinf-Vomcrit;

t=[0:2*10^(-8):7*10^(-6)];

t1=V1/SR;

t12=[0:2*10^(-8):tau]

vo3=0*ones(1,length(t12));
plot(t12,vo3);

t11=[tau:2*10^(-8):t1+tau];

vo1=SR*(t11-tau);

t22=[t1+tau:2*10^(-8):7*10^(-6)];

vo2=Voinf+((V1-Voinf)*exp(-(t22-t1-tau)/tau));

plot(t11,vo1);

plot(t22,vo2);

xlabel("time(t)","fontsize", 6);

ylabel("vo(t)","fontsize", 6);

title("Step Response of the Circuit","fontsize", 8);