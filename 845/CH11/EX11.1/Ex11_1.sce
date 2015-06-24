//Example 11.1

clc
clear

delx = 1/8;
delt = 1/8;
x = 0:delx:1;
t = 0:delt:1;
m = length(x);
n = length(t);
u =zeros(n,m);
u(1,:) = sin(%pi*x);
N = 1/delx;
r = delt/delx;

for j = 2:n
    for i = 2:m-1
        if j == 2 then
            u(j,i) = (2*(1-r^2)*u(j-1,i) + r^2*(u(j-1,i-1) + u(j-1,i+1))) /2;
        else
            u(j,i) = 2*(1-r^2)*u(j-1,i) + r^2*(u(j-1,i-1) + u(j-1,i+1)) - u(j-2,i);
        end
    end
end
u = round(u*10^4)/10^4;
mprintf("\n\n%6s %9s %9s %8s %s %8s %10s %10s %9s %7s %s",'t','x = 0.0','x = 0.125','x = 0.25','x = 0.375','x = 0.5','x=0.625','x = 0.75','x=0.875','x = 1.0','n');
disp([(0:1/8:1)' u (0:n-1)']);
mprintf("\n\n");
t = [1/2 1];
for i = 1:length(t)
    Ex(i,:) = sin(%pi*x) * cos(%pi*t(i));
end
Ex = round(Ex*10^4)/10^4;
disp("At t = 1/2:")
disp(u(find(x==1/2),:),"Computed Solution:")
disp(Ex(1,:),"Actual Solution:")

disp("At t = 1:")
disp(u(find(x==1),:),"Computed Solution:")
disp(Ex(2,:),"Actual Solution:")
