//Example 19.9
//Inhomogeneous 1st Order Hyperboolic Differential Equation
//Page no. 665
clc;clear;close;

//simple explicit method
printf('\n\nBy Simple Explicit Method:\n')
c=-2;dt=0.07;dx=0.2;
r=abs(c)*dt/dx;
printf('\n  i\tx\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  |\t|\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*dt)
end
printf('\n---------------------------------------------------------------------------------------')
x=0;
for j=1:6
    printf('\n %i\t%.1f\t|\t\t',j-1,x)
    for i=1:7
        if i==1 then
            u(j,i)=exp(-x);
        elseif j==1 then
            u(j,i)=1
        else
            u(j,i)=(1-r)*u(j,i-1)+r*u(j-1,i-1)+dt*2*x
        end
        printf('%.3f\t',u(j,i))
    end
    x=x+dx
end


//simple implicit method
printf('\n\n\nBy Simple Implicit Method:\n')
c=-2;dt=0.07;dx=0.2;
r=abs(c)*dt/dx;
printf('\n  i\tx\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  |\t|\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*dt)
end
printf('\n---------------------------------------------------------------------------------------')
x=0;
for j=1:6
    printf('\n %i\t%.1f\t|\t\t',j-1,x)
    for i=1:7
        if i==1 then
            u(j,i)=exp(-x);
        elseif j==1 then
            u(j,i)=1
        else
            u(j,i)=(1/(1+r))*u(j,i-1)+r*u(j-1,i)/(1+r)+dt*2*x
        end
        printf('%.3f\t',u(j,i))
    end
    x=x+dx
end


//wendroff method
printf('\n\n\nBy Wendroff Method:\n')
c=2;k=0.07;h=0.2;
a=(h+k*c)/(h-k*c)
printf('\n  x\ti\t|\tj -->\t')
for i=0:6
    printf('  %i\t',i)
end
printf('\n  |\t|\t|\tt -->\t')
for i=0:6
    printf('%.3f\t',i*k)
end
printf('\n---------------------------------------------------------------------------------------')
x=0;
for i=1:6
    printf('\n %.1f\t%i\t|\t\t',x,i-1)
    for j=1:7
        if j==1 then
            u(i,j)=exp(-x);
        elseif i==1 then
            u(i,j)=1
        else
            u(i,j)=u(i-1,j-1)+(u(i,j-1)-u(i-1,j))/a+(2*h*k)*(x+h/2)/(a*(h+c*k))
        end
        printf('%.3f\t',u(i,j))
    end
    x=x+h
end