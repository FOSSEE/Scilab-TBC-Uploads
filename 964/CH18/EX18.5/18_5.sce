clc;
clear;
x=[1 4 6 5 3 1.5 2.5 3.5];
y=[0 1.3862944 1.7917595 1.6094379 1.0986123 0.4054641 0.9162907 1.2527630];
n=8;
for i=1:n
    fdd(i,1)=y(i);
end
for j=2:n
    for i=1:n-j+1
        fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i));
    end
end
xterm=1;
yint(1)=fdd(1,1);

for order=2:n
    xterm=xterm*(2-x(order-1));
    yint2=yint(order-1)+fdd(1,order)*xterm;
    Ea(order-1)=yint2-yint(order-1);
    yint(order)=yint2;
   
end
disp(yint,"F(x)=")
disp(Ea,"Ea=")


