clear;
close;
clc;
n=-10:10;
N=2;
for i=1:length(n)
    if n(i)>=-N & n(i)<=N then
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
//time scaled sequence x2[n]
n2=-20:2:20;
figure
subplot(2,1,1)
plot2d3(n2,x);
title("x2[n]")
plot(n2,x,'r.')
w2=-5:0.05:5;
subplot(2,1,2)
plot2d(w2,Xw);
title("X2[w] fourier transform")
//time scaled sequence x3[n]
n3=-30:3:30;
figure
subplot(2,1,1)
plot2d3(n3,x);
title("x3[n]")
plot(n3,x,'r.')
w3=w/3;
subplot(2,1,2)
plot2d(w3,Xw);
title("X3[w] fourier transform")

