//Example 11.2

clc
clear

delx = 0.2;
delt = 0.2;
x = 0:delx:1;
t = 0:delt:0.8;
m = length(x);
n = length(t);
u =zeros(n,m);
u(1,:) = x^2;
u(:,m) = 1+t';
N = 1/delx;
r = delt/delx;

for j = 2:n
    for i = 2:m-1
        if j == 2 then
            u(j,i) = (2*(1-r^2)*u(j-1,i) + r^2*(u(j-1,i-1) + u(j-1,i+1)) + 2*delt) /2;
        else
            u(j,i) = 2*(1-r^2)*u(j-1,i) + r^2*(u(j-1,i-1) + u(j-1,i+1)) - u(j-2,i);
        end
    end
end
u = round(u*10^4)/10^4;
mprintf("\n%5s %9s %7s %7s %s %6s %6s",'t','x = 0.0','x = 0.2','x = 0.4','x = 0.6','x = 0.8','x = 1.0');
disp([t' u])
