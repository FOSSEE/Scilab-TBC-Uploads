//Example 19.5
//Lax Wendroff Method
//Page no. 660
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
i=1;
printf('\n---------------------------------------------------------------------------------------')
for j=1:7
    for i=1:6
        if j==1 then
            u(i,j)=0;
            u(i+1,j)=0;
        elseif i==1 then
            u(i,j)=1
        else
            u(i,j)=r*(r-1)*u(i+1,j-1)/2+(1-r^2)*u(i,j-1)+r*(1+r)*u(i-1,j-1)/2
        end
    end
end
for i=1:6
    printf('\n %.1f\t%i\t|\t\t',(i-1)*dx,i-1)
    for j=1:7
        printf('%.3f\t',u(i,j))
    end
end