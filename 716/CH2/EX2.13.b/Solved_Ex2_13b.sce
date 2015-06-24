//Test the Given systems for linearity,y(t)=x(t^2)
clc;
clear;
function x=f1(t),x=t'*t; ,endfunction//x function of t^2
function y=f(t,x), y=x; ,endfunction//y function of y and t
t=-5:0.1:5;
x1=f1(t);
x2=f1(t);
x3=x1+x2;
if f(t,x3)==(f(t,x1)+f(t,x2));
    disp('system is linear');
    else
    disp('system is non linear');
end
