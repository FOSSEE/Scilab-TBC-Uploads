//Test the Given systems for linearity,y(n)=x(n)+C
clc;
clear;
function x=f1(n),x=n; ,endfunction//x function of n
function y=f(n,x), y=x+5; ,endfunction//y function of x and n
n=-5:1:5;
x1=f1(n);
x2=f1(n);
x3=x1+x2;
if f(n,x3)==(f(n,x1)+f(n,x2));
    disp('system is linear');
    else
    disp('system is non linear');
end
