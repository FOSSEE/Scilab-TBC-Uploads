clear
clc
xset('window',1)
xtitle("My Graph","X axis","Y axis")
x=linspace(-5,10,70)
y1=(x+8)/2
y2=x^2/8
plot(x,y1,"o-") 
plot(x,y2,"+-")
legend("(x+8)/2","x^2/8")
disp("from the graph,it is clear that the points of intersection are x=-4 and x=8.")
disp("So,our region of integration is from x=-4 to x=8")
integrate('(x+8)/2-x^2/8','x',-4,8)