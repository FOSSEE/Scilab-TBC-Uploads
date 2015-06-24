//Example 1.4
//Time Shifting And Scaling
clc;
n=-2:8;
x=[0,0,0,1,2,3,4,4,0,0,0];
n1=n+3;
subplot(2,2,1);
plot2d3(n1,x);
xtitle('x[n-3]');
subplot(2,2,2);
plot2d3(ceil(n/3),x);
xtitle('x[3n]');
subplot(2,2,3);
n2=-8:2;
plot2d3(n2,x($:-1:1));
xtitle('x[-n]');
subplot(2,2,4)
n3=n2+3;
plot2d3(n3,x($:-1:1));
xtitle('x[-n+3]');
figure
plot2d3(n,x);
xtitle('x[n]');