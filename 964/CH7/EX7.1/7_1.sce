clc;
clear;
function y=f(x)
    y=(x-4)*(x+6)
endfunction
n=2;
a(1)=-24;
a(2)=2;
a(3)=1;
t=4;
r=a(3);
a(3)=0;
for i=(n):-1:1
    s=a(i);
    a(i)=r;
    r=s+r*t;
end
disp("The quptient is a(1)+a(2)*x where :")
disp(a(1),"a(1)=")
disp(a(2),"a(2)=")
disp(r,"remainder=")