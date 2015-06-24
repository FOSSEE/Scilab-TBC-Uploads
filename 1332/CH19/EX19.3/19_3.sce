//Example 19.3
//Simple Explicit Method
//Page no. 658
clc;clear;close;

c=-2;dt=0.07;dx=0.2;
r=abs(c)*dt/dx;
printf('\n  x\ti\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  |\t|\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*dt)
end
printf('\n---------------------------------------------------------------------------------------')
for j=1:6
    printf('\n %.1f\t%i\t|\t\t',(j-1)*dx,j-1)
    for i=1:7
        if i==1 then
            u(j,i)=0;
        elseif j==1 then
            u(j,i)=1
        else
            u(j,i)=(1-r)*u(j,i-1)+r*u(j-1,i-1)
        end
        printf('%.3f\t',u(j,i))
    end
end