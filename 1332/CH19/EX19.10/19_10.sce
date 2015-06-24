//Example 19.10
//Non Linear 1st Order Hyperboolic Differential Equation
//Page no. 667
clc;clear;close;

c=-2;k=0.05;h=0.2;
r=abs(c)*k/h;
printf('\n i\t x\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n |\t |\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*k)
end
i=1;
x=0;
printf('\n---------------------------------------------------------------------------------------')
for j=1:7
    for i=1:6
        if j==1 then
            u(i,j)=exp(-x);
            u(i+1,j)=exp(-(x+h));
        elseif i==1 then
            u(i,j)=1
        else
            u(i,j)=u(i,j-1)-k*(u(i+1,j-1)^2-u(i-1,j-1)^2)/(4*h)+k^2*((u(i+1,j-1)+u(i,j-1))*(u(i+1,j-1)^2-u(i,j-1)^2)-(u(i,j-1)+u(i-1,j-1))*(u(i,j-1)^2-u(i-1,j-1)^2))/(8*h^2)
    end
    x=x+h
    end
end
x=0;
for i=1:6
    printf('\n %i\t%.1f\t|\t\t',i-1,x)
    for j=1:7
        printf('%.3f\t',u(i,j))
    end
    x=x+h
end