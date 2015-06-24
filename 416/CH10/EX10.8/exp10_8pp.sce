clear
clc
disp("example 10.8")
r1=22;r2=30;q1=0.2;q2=0.15
b22=0;b12=0;p1=100;pl=15//transmission losses are 0
b11=pl/(p1)^2
function [p1,p2]=power(x) //mathematical computation
    p1=(x-r1)/(q1+2*b11*x)
     p2=(x-r2)/q2
endfunction
[a,b]=power(60)
printf("l1=1/(1-%.3f*p1)\nl2=[1/(1-0)]=1\ngiven lamda=60\nsince ic1*l1=lamda ;ic2*l2=lamda\ntotal load=%dMW",b11*2,a+b-(b11*a^2))
