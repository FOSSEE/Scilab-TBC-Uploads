//Example 19.13
//Hyperbolic Differential Equations in 2D or 3D
//Page no. 675
clc;clear;close;

deff('y=f(x,y)','y=x*(2-x)*y*(2-y)')
c2=3;k=0.4;h=0.4;c2=3;s2=0.5
for l=0:11
    if l==0 then
        printf('\n t = %i\n\n i\t  x\t|\tj -->\t',l)
    for i=0:5
        printf('  %i\t',i)
    end
    printf('\n |\t  |\t|\ty -->\t')
    for i=0:5
         printf('%.3f\t',i*k)
    end
    x=0;
     printf('\n---------------------------------------------------------------------------------------')
     for i=1:6
         y=0;
        printf('\n %i\t%.3f\t|\t\t',i-1,x)
        for j=1:6
             if i==1 | i==6 then
                u(i,j)=0;
            elseif j==1 | j==6 then
                u(i,j)=0
            else
                u(i,j)=f(x,y)
        end
            printf('%.3f\t',u(i,j))
       y=y+k;
        end
    x=x+h
end
u2=u;
else
    printf('\n\n\n t = %i\n\n i\t  x\t|\tj -->\t',l)
    for i=0:5
        printf('  %i\t',i)
    end
    printf('\n |\t  |\t|\ty -->\t')
    for i=0:5
         printf('%.3f\t',i*k)
    end
    x=0;
     printf('\n---------------------------------------------------------------------------------------')
     for i=1:6
         y=0;
        printf('\n %i\t%.3f\t|\t\t',i-1,x)
        for j=1:6
             if i==1 | i==6 then
                u(i,j)=0;
            elseif j==1 | j==6 then
                u(i,j)=0
            elseif l==1
                u(i,j)=s2*(u1(i+1,j)+u1(i-1,j)+u1(i,j+1)+u1(i,j-1)-4*u1(i,j))+2*u1(i,j)
            else
                u(i,j)=s2*(u1(i+1,j)+u1(i-1,j)+u1(i,j+1)+u1(i,j-1)-4*u1(i,j))+2*u1(i,j)-u2(i,j)
        end
            printf('%.4f\t',u(i,j))
       y=y+k;
        end
    x=x+h
    end
end
if l>1 then
    u2=u1
end
u1=u;
end