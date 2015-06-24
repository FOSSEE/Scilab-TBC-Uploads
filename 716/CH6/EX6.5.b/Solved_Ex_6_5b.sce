//Determine even and odd parts of the signals x(n)=2*e^(pi*n/3)
clc;
clear;
n=-15:1:15;
x1=2*exp(%i*%pi*n/3);
plot2d3(n,x1);//for discrete plot
x2=2*exp(%i*%pi*-1*n/3);

Xo=(x1-x2)/2;
Xe=(x1+x2)/2;

xset('window',1);
subplot(1,2,1);
plot2d3(n,Xo);
xlabel("time");
ylabel("odd");

subplot(1,2,2);
plot2d3(n,Xe);
xlabel("time");
ylabel("even");

xset('window',2);
X=(Xo+Xe);
plot2d3(n,X);