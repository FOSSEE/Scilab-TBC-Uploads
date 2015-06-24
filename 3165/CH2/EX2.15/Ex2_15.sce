//Example 2.15//
//program to find linear convolution//
clc;
x=[1 2 3];
y=[1 1 1];
subplot(3,2,1);
plot2d3(x);
subplot(3,2,2);
plot2d3(y);
h=conv(x,y);
subplot(3,2,3);
plot2d3(h);
xlabel('frequency');
ylabel('amplitude');
title('linear convolution');
