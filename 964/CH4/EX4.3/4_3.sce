clc;
clear;
m=input("Input value of m:")
h=input("Input value of h:")
function y=f(x)
    y=x^m
endfunction
x1=1;
x2=x1+h;
fx1=f(x1);
fx2=fx1+m*(fx1^(m-1))*h;
if m==1 then
    R=0;
else if m==2 then
        R=2*(h^2)/factorial(2);
        end
     if m==3 then
        R=(6*(x1)*(h^2)/factorial(2))+(6*(h^3)/factorial(3));
        end
     if m==4 then
        R=(12*(x1^2)*(h^2)/factorial(2))+(24*(x1)*(h^3)/factorial(3))+(24*(h^4)/factorial(4));
        end
end
disp(R,"Remainder:",fx2,"The value by first order approximation:")
disp(f(x2),"True Value at x2:")