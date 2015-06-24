clear
clc
xset('window',1)
xtitle("My Graph","radians","power per unit")
x=linspace(0,%pi,100)
y=6.22*sin(x)

plot(x,y) 
