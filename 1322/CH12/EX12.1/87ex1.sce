
//Given : inequalities y>x and y<2*x-3
clc;
clear;
clf();
x=linspace(0,8,8);
y=2*x-3;//"points in the region y<2*x-3 lie below the line y=2*x-3"
plot(x,y,"o-");
y=x;//"points in the region y>x lie above the line y=x"
plot(x,y,"+-");
x=5;y=6;plot(x,y,'r.diam')//point that lies in the region 
xtitle("region described by inequalities","x axis","y axis");
legend("2*x-3","x");
xgrid;

