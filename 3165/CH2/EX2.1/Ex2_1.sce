//unit step//
clc;
n=5;//input//
f=0:1:n-1;//variable//
y=ones(1,n);//output//
subplot(2,2,2);
plot2d3(f,y);
xlabel('a(n)');
ylabel('amplitude');
title('unit step');
