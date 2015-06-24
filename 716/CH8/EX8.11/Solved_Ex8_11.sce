//find fourier inverse of X(jw),X(jw)=exp(-1.5*%i*w).*(abs(w)<=1)+0.*(1<=w & w<=%pi)
clc;
clear;
w=0:0.1:2*%pi
X=exp(-1.5*%i*w).*(w>=-1 & w<=1)+0.*(1<=w & w<=%pi);
x=dft(X,1);
n=0:1:length(x)-1;
plot2d3(n,x,2);
xtitle('Graphical Representation of x(n)','n','x(n)');