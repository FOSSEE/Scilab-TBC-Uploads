//Scilab Code for Example 9.3 of Signals and systems by
//P.Ramakrishna Rao
//Convolution of two signals
clc;
clear;
function [y]=u(t)
    if t>=0
    y=1
else y=0
    end
endfunction
n=1;
for t=-5:0.1:5
    x(n)=-2*u(t-0.5)+2*u(t-1.5);
    y(n)=(t+1)*u(t+1)-(t+1)*u(t-2);
    n=n+1;
end
z=conv(x,y);
t=-5:0.1:5;
plot2d2(t,x,5);
title('x(t)');
figure(1);
t=-5:0.1:5;
plot2d(t,y,2);
title('y(t)');
figure(2);
t=-10:0.1:10;
plot2d(t,z,6);
title('Convolution');