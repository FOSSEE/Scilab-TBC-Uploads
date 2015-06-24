clear;
close;
clc;
n=-10:10;
W0=1;
x=cos(W0*n);
figure
subplot(2,1,1)
plot2d3(n,x);
title("x[n]")
plot(n,x,'r.')
//cos(W0*n)=1/2*(e^-%j*W0*n+e^%j*W0*n)
w=-5:0.01:5;
for i=1:length(w)
    if w(i)==W0 then
        deltaW0(i)=1;
    else 
        deltaW0(i)=0;
    end
end
delta_W0=deltaW0($:-1:1);
//by frequency shifting property
Xw=1/2*[deltaW0+delta_W0];
subplot(2,1,2)
plot2d(w,Xw);
title("X[w] fourier transform")
