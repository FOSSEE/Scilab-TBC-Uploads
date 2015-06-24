//Example 4.11
//Convolution sum of x[n] and h[n]
clc
clear
n=-1:1;
n1=-2:2;
x=[0.5 0.5 0.5];
h=[3 2 1];
A=[x 0 0;0 x 0; 0 0 x];
y=A'*h'
disp("Convolution of x[n] and h[n] is...")
disp(y)
subplot(3,1,1)
xtitle("input signal x(n)","....................n","x[n]");
plot2d3('gnn',n,x,5);
subplot(3,1,2)
xtitle("system response h(n)","....................n","h[n]");
plot2d3('gnn',n,h,5);
subplot(3,1,3)
xtitle("output signal y(n)",".............................n","y[n]");
plot2d3('gnn',n1,y,5);
