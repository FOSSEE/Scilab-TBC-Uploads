//Fouries series representation of combinarion of signals
//x[n]=1+sin(pi*n/2)+cos(%pi*n/4)
clc
clear
close
n=-3:3;
x=1+sin(%pi*n/2)+cos(%pi*n/4);
w1=%pi/2;
w2=%pi/4;
N1=2*%pi/w1;
N2=2*%pi/w2;
N=max(N1,N2);
wo=2*%pi/N;
//Expanding x[n] by Euler's theorem
xn=1+0.5*exp(%i*wo*n)+0.5*exp(-%i*wo*n)-0.5*%i*exp(%i*2*wo*n)-0.5*%i*exp(-%i*2*wo*n);
a0=1;
a1=0.5;
a_1=0.5;
a2=1/2*%i;
a_2=-1/2*%i;
a=[a_2 a_1 a0 a1 a2];
a1=[0 a 0];
phase=[%pi/2 0 0 0 -%pi/2]
phase=[0 phase 0]
subplot(2,1,1)
plot(n,abs(a1),'.')
xtitle("magnitude spectrum","k","ak")
subplot(2,1,2)
plot(n,phase,'.')
xtitle("Phase spectrum","k","ak")
