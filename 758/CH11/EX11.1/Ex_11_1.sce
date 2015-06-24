//Example 11.1

clc;clear;close;
x=[0:6 0:6];
y=x(1:3:length(x));
disp(x,'Input signal x(n)=');
disp(y,'Output signal of decimation process by factor three y(n)');
subplot(2,1,1);
plot2d3(x);title('Input signal x(n)');
subplot(2,1,2);
plot2d3(y);title('Output signal y(n)');
