//Scilab Code for Example 11.1 of Signals and systems by
//P.Ramakrishna Rao
//Hilbert Transform
clc;
clear;
n=1;
for t=-1:0.01:1
    xr(n)=sin(2*%pi*t);
    n=n+1;
end
//Computing Hilbertb Transform
x=hilbert(xr);
t=-1:0.01:1;
plot(t,xr);
title('Given Signal x(t)');
xlabel('time t-->');
figure(1);
t=-1:0.1:1;
plot(t,imag(x));
title('Hilbert Transform');
xlabel('time t-->');
