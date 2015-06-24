//Example 7.13

clc
clear

function [f] = fun1(x,y)
    f = sqrt(sin(x+y));
endfunction

x = 0:%pi/8:%pi/2;
y = x;

m = length(x);
n = length(y);

del = %nan*ones(m,n);
for j = 1:n
    for i = 1:m
        del(i,j) = fun1(x(i),y(j));
    end
end

hx = x(2) - x(1);
for i = 1:m
    I = del(i,1);
    for j = 2:n-1
        I = I + 2*del(i,j);
    end
    Itrap1(i) = hx/2 * (I+del(i,n));
end
Itrap1 = round(Itrap1*10^4)/10^4;

hy = y(2) - y(1);
Itrap2 = Itrap1(1)
for i = 2:n-1
    Itrap2 = Itrap2 + 2* Itrap1(i);
end
Itrap2 = round(hy/2*(Itrap2+Itrap1(m))*10^4)/10^4;
disp(Itrap2,"I = ")
