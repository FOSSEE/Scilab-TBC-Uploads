clear
clc
disp("example 10.9")
r1=22;r2=30;q1=0.2;q2=0.15
b22=0;b12=0;p1=100;pl=15//transmission losses are 0
b11=pl/(p1)^2
function [p1,p2]=power(x) //mathematical computation
    p1=(x-r1)/(q1+2*b11*x)
     p2=(x-r2)/q2
endfunction
[a,b]=power(60)
pt=a+b-(b11*a^2)




z=integrate('q1*u+r1','u',a,161.80)
y=integrate('q2*v+r2','v',b,162.5)
m=z+y
printf("net change in cost =Rs.%dper hour",m)
printf("\nthus scheduling the generation by taking transmission losses into account would mean a saving of Rs.%dper hour in fuel cost",m)