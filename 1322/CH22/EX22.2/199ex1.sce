
//y=a*x^n
clear;
clc;
close;
clf;
x=[18 20 22 24 25];
y=[623 863 1160 1519 1724]; 
//taking log on both sides for y=a*x^n =>log(y)=n*log(x)+log(a)  ....equ(1)
logx=log10(x);
logy=log10(y);
plot2d(logx,logy,13);
//select points A & B on straight line.
plot(1.398,3.236,'r.diam');
plot(1.255,2.795,'r.diam');
n=poly(0,'n');
//3.236=1.398*n+log(a).substitute point A in equ...(1),GIVES equ(3)
//2.795=1.255*n+log(a).substitute point B in equ...(1),GIVES equ(4)
//equ(3)-equ(4)
p=(3.236-1.398*n)-(2.795-1.255*n);
n=roots(p);
mprintf("y=a*x^n")
format(5)
a=10^(2.795-1.255*n)
xtitle("graph of y=a*x^n ","log x ","log y ");
legend("y=a*x^n","points A,B",2);
xgrid;
mprintf("\n y=0.08*x^3.08\n ");//substituting a,n values in y=a*x^n
