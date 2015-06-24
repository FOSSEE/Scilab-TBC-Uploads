//Example 19.8
//Variable Coefficients
//Page no. 663
clc;clear;close;

//simple explicit method
printf('\n\nBy Simple Explicit Method:\n\n')
dt=0.05;dx=0.2;
x=0;
printf('\n i\t  x\t  r\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  \t\t\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*dt)
end
printf('\n----------------------------------------------------------------------------------------------')
for j=1:6
    r=sqrt(1+2*x)*dt/dx;
    printf('\n %i\t%.3f\t%.3f\t|\t\t',(j-1),x,r)
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
    x=x+dx
end


//simple implicit method
printf('\n\n\nBy Simple Implicit Method:\n')
c=-2;dt=0.05;dx=0.2;x=0
printf('\n i\t  x\t  r\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  \t\t\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*dt)
end
printf('\n----------------------------------------------------------------------------------------------')
for j=1:6
    r=sqrt(1+2*x)*dt/dx;
    printf('\n %i\t%.3f\t%.3f\t|\t\t',(j-1),x,r)
    for i=1:7
        if i==1 then
            u(j,i)=0;
        elseif j==1 then
            u(j,i)=1
        else
            u(j,i)=(1/(1+r))*u(j,i-1)+r*u(j-1,i)/(1+r)
        end
        printf('%.3f\t',u(j,i))
    end
    x=x+dx
end


//wendroff method
printf('\n\n\nBy Wendroff Method:\n')
k=0.05;h=0.2;
x=0.1;
printf('\n i\t  x\t  c\t  a\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  \t\t\t\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*k)
end
printf('\n-------------------------------------------------------------------------------------------------------')
for i=1:6
    c=sqrt(1+2*x);
    a=(h+k*c)/(h-k*c)
    printf('\n %i\t%.3f\t%.3f\t%.3f\t|\t\t',(i-1),x-h/2,c,a)
    for j=1:7
        if j==1 then
            u(i,j)=0;
            u(i+1,j)=0;
        elseif i==1 then
            u(i,j)=1
        else
            u(i,j)=u(i-1,j-1)+(u(i,j-1)-u(i-1,j))/a
        end
        printf('%.3f\t',u(i,j))
    end
    x=x+h
end