clear;
close;
clc;
n=-10:10;
N=5;
for i=1:length(n)
    if n(i)>=0 & n(i)<=N then
        x(i)=1;
    else
        x(i)=0;
    end
end
x=x';
figure
subplot(2,1,1)
plot2d3(n,x);
title("x[n]")
plot(n,x,'r.')
w=-10:0.1:10;
Xw=x*exp(-%i*n'*w);
subplot(2,1,2)
plot2d(w,Xw);
title("X[w] fourier transform")
