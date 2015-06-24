clc;
clear;
function yp=f(x,y)
    yp=10*exp(-(x-2)^2/(2*(0.075^2)))-0.6*y
endfunction
x=0:0.1:4
y0=0.5;
sol=ode(y0,0,x,f);
plot(x,sol)
xtitle("y vs x","x","y")
