clc;
clear;
x=0:10;
y=sin(x);
xi=0:.25:10;
//part a
yi=interp1(x,y,xi);
plot2d(xi,yi)
xtitle("y vs x (part a)","x","y")
//part b
//fitting x and y in a fifth order polynomial
clf();
p=[0.0008 -0.0290 0.3542 -1.6854 2.586 -0.0915];

for i=1:41
    yi(i)=p(1)*(xi(i)^5)+p(2)*(xi(i)^4)+p(3)*(xi(i)^3)+p(4)*(xi(i)^2)+p(5)*(xi(i))+p(6);
end
plot2d(xi,yi);
xtitle("y vs x (part b)","x","y")
//part c
clf();
d=splin(x,y)
yi-interp(xi,x,y,d)
plot2d(xi,yi)
xtitle("y vs x (part c)","x","y")
