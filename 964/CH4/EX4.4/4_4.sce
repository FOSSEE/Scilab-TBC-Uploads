clc;
clear;
function y=f(x)
    y=-0.1*(x^4)-0.15*(x^3)-0.5*(x^2)-0.25*(x)+1.2
endfunction
x=0.5;
h=input("Input h:")
x1=x-h;
x2=x+h;
//forward difference method
fdx1=(f(x2)-f(x))/h;//derivative at x
et1=abs((fdx1-derivative(f,x))/derivative(f,x))*100;
//backward difference method
fdx2=(f(x)-f(x1))/h;//derivative at x
et2=abs((fdx2-derivative(f,x))/derivative(f,x))*100;
//central difference method
fdx3=(f(x2)-f(x1))/(2*h);//derivative at x
et3=abs((fdx3-derivative(f,x))/derivative(f,x))*100;
disp(h,"For h=")
disp(et1,"and percent error=",fdx1,"Derivative at x by forward difference method=")
disp(et2,"and percent error=",fdx2,"Derivative at x by backward difference method=")
disp(et3,"and percent error=",fdx3,"Derivative at x by central difference method=")