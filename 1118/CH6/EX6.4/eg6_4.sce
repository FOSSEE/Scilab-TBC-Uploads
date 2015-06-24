clear;
clc;

wc=.594;
a=64.5;
t=9.53;
d=3*3.45;
sag=3.96;
p=40;
E=12700;
l=160;
alpha=1.7*10^(-5);
wi=(%pi)*t*(t+d)*913.5*10^(-6);
wh=(d+2*t)*p*10^(-3);
wr=sqrt((wc+wi)^2 + wh^2);
w1=wr;
T1=w1*l*l/(sag*8);

w2=wc;
t1=-5.5;
T2=wc*T1/w1;
//by using the formula t2^2(t2-K+b)=w2^2*l*l*e*a/24

t2=t1+(T1-T2)/(alpha*E*a);
printf("The temperature at which the sag will remain the same:%.2f degC",t2);
