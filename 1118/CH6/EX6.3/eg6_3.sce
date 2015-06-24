clear;
clc;

uts=14740;
a=538.4;
E=7000;
wc=1.805;
p=100;
l=335;
alpha=19.3*10*(-6);
fs=2;
n=4;
ds=3.35;
d=(1+2*n)*ds;
wh=(2/3)*d*p;

//a).
wr=sqrt((wc+wh)^2 + wh^2);
T=(uts/fs);  //bl=breaking load=uts     fs=factor of safety
printf("The maximum working stress is:%.2f kgf",T);
sag=wr*l*l/(8*T);
printf("\n The deflected sag is:%.3f m",sag/1000);

//b).

t1=60;
T1=T;
w1=wr;

K=T1-w1*w1*l*l*E*a/(24*T1*T1);
b=alpha*(t1-0)*E*a;
//by using the formula t2^2(t2-K+b)=w2^2*l*l*e*a/24 and getting a solution by hit trial

T2=4083;
sag_60=wc*l*l/(8*T2);
printf("\n The sag is:%.3f m",sag_60);

//c).
fs=4;
t2=30;
T=(uts/fs);  //bl=breaking load=uts     fs=factor of safety
K=T1-w1*w1*l*l*E*a/(24*T1*T1);
b=alpha*(t1-t2)*E*a;

//by using the formula t2^2(t2-K+b)=w2^2*l*l*e*a/24 and getting a solution by hit trial

T2=3132;
printf("\n The maximum working stress is:%.2f",T2);
sag_60=wc*l*l/(8*T2);
printf("\n The sag is:%.2f m",sag_60);
//similar calculations can be made for other temperatures and loading conditions
