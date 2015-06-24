//Scilab Code for Example 9.1 of Signals and systems by
//P.Ramakrishna Rao
//Convolution of two signals
clc;
n=1;
for t=-10:0.1:10
    x(n)=5*cos(t);
    y(n)=2*exp(-abs(t));
    n=n+1;
end
z=conv(x,y);
t2=-20:0.1:20;
plot2d(t2,z);
title('Output signal');
xlabel('Time t-->');
