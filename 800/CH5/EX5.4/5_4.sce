//Clear//
clc
clear
exec("5.4data.sci");

rCH4 = (v0/W)*CCH4;x
x=log(PCO);
y = log(rCH4)
alpha= (y(3)-y(2))/(x(3)-x(2));
//plot2d(x,y)
disp("alpha")
disp(alpha)
