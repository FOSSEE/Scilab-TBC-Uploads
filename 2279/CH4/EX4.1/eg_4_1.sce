//Example 4.1
//Convolution sum of x[n] and h[n]
clc
clear
n=[0 1 2];
n1=0:4;
x=[0.5 0.5 0.5];
h=[3 2 1];
y=convol(h,x)
disp("Convolution of x[n] and h[n] is...")
disp(y)
subplot(3,1,1)
xtitle("","....................n","x[n]");
plot2d3('gnn',n,x,5);
subplot(3,1,2)
xtitle("","....................n","h[n]");
plot2d3('gnn',n,h,5);
subplot(3,1,3)
xtitle("",".............................n","y[n]");
plot2d3('gnn',n1,y,5);
