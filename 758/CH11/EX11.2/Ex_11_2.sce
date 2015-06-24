//Example 11.2

clc;clear;close;
x=0:5;
y=[];
for i=1:length(x)
    y(1,2*i)=x(i);
end
disp(x,'Input signal x(n)=');
disp(y,'Output signal of interpolation process with factor two y(n)');
subplot(2,1,1);
plot2d3(x);title('Input signal x(n)');
subplot(2,1,2);
plot2d3(y);title('Output signal y(n)');
