//Example 11.16
//Crank Nicolson Method
//Page no. 394
clc;clear;close;
//case 1
h=1/4;k=1/8;
r=k/h^2;
n=1/h+1;
for i=1:2
    for j=1:n
        if i==2 then
            u(i,j)=sin(%pi*(j-1)*h)
        end
        if j==1 | j==n then
            u(i,j)=0;
        end
    end
end

a=[3,-1,0;-1,3,-1;0,-1,3];
a=inv(a);
for j=2:4
    
end
for i=2:-1:2
    for j=2:4
      b(j-1)=u(i,j-1)+(1-r)*u(i,j)+u(i,j+1)
    end
    x=a*b
    u(i-1,2)=x(1);u(i-1,3)=x(2);u(i-1,4)=x(3);
end
printf('\nfor h = 1/4 and k=1/8\n\n')
for i=1:1
    for j=2:4
        printf('\t  u%i  = %.9f',j-1,u(i,j))
    end
end
printf('\n\n\n')



//case 2
h=1/4;k=1/16;
r=k/h^2;
n=1/h+1;
for i=1:3
    for j=1:n
        if i==3 then
            u(i,j)=sin(%pi*(j-1)*h)
        end
        if j==1 | j==n then
            u(i,j)=0;
        end
    end
end

a=[4,-1,0;-1,4,-1;0,-1,4];
a=inv(a);
for j=2:4
    
end
for i=3:-1:2
    for j=2:4
      b(j-1)=u(i,j-1)+(1-r)*u(i,j)+u(i,j+1)
    end
    x=a*b
    u(i-1,2)=x(1);u(i-1,3)=x(2);u(i-1,4)=x(3);
end
printf('\nfor h = 1/4 and k=1/16\n\n')
l=1;
for i=2:-1:1
    for j=2:4
        printf('\t  u%i  = %.9f',j+l-i,u(i,j))
    end
    printf('\n')
    l=3;
end
printf('\n\n\n')
printf('The Anlytical Solution u1 = %g',exp(-%pi^2*k)*sin(%pi*h))
printf('\n\n\n\nNote : Computation Errors in the book')