clc;
clear;
x=0.5:0.5:5.5;
for i=1:11
    y(i)=0.9846*log(x(i))+1.0004;
end
plot(x,y)
xtitle("y vs x","x","y")