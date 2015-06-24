clear
clc
xset('window',1)
xtitle("My Graph","radians","power per unit")
x=linspace(0,%pi,100)
y=1.77*sin(x)+0.67*sin(2*x)
plot(x,y) 