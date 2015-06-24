clear;
close;
clc;
w=-5:0.01:5;
W0=2;
for i=1:length(w)
    if w(i)==W0 then
        delta(i)=2*%pi;
    else 
        delta(i)=0;
    end
end
figure
subplot(2,1,1)
plot(w,delta);
title('2*%pi*delta(w-w0)')
//by shifting property
n=-10:10;
x=%e^-%i*W0*n;
subplot(2,1,2)
plot2d3(n,abs(x))
plot(n,abs(x),'r.')
title('x[n]')