//Test the Given systems for linearity,y(t)=exp(x(t))
clc;
clear;
function x=f1(t),x=t; ,endfunction//x function of t
function y=f(t,x), y=exp(x); ,endfunction//y function of t and x
t=-5:0.1:5;
x1=f1(t);
x2=f1(t);
x3=x1+x2;
if f(t,x3)==(f(t,x1)+f(t,x2));
    disp('system is linear');
    else
    disp('system is non linear');
end
