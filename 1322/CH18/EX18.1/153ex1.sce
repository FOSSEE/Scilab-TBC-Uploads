
clear;
clc;
close;
clf;
x=[0 1 2 3 4];
y=2^x;
xtitle("Graph of 2^x","x-axis","y-axis");
plot(x,y,"o-");
legend("y=2^x");
xgrid();
