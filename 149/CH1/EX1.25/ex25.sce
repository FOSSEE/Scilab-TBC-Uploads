clear
clc
xset('window',3)
xtitle("My Graph","X axis","Y axis")
x=linspace(0,3,30)
y1=-sec(x)
y2=cosh(x)
plot(x,y1,"o-") 
plot(x,y2,"+-")
legend("-sec(x)","cosh(x)")
disp("from the graph,it is clear that the point of intersection is nearly x=2.3 ")