//Example 19.11
//Finite Difference Method
//Page no. 670
clc;clear;close;
deff('y=f(x)','y=sin(%pi*x)')
deff('y=g(x)','y=0')
a=1;b=1;c=1;n=5;m=10;
h=a/n;k=b/m;r=c*k/h;
r1=r^2;r2=r1/2;s1=1-r1;s2=2*(1-r2)
printf('\n i ')
for i=1:n
    printf('\t  %i',i)
end
printf('\n-----------------------------------------------\nfi')
for i=1:n
    f1(i)=f(h*(i-1))
    printf('\t%.3f',f1(i))
end
printf('\ngi')
for i=1:n
    g1(i)=g(h*(i-1))
    printf('\t  %g',g1(i))
end
printf('\n\n\n i / j --> ')
for i=1:m
    printf('\t  %i',i)
end
printf('\n-------------------------------------------------------------------------------------------------')
for j=1:m
    for i=1:n
        if i==1 | i==n then
            u(i,j)=0;
        elseif j==1
            u(i,j)=f1(i)
        elseif j==2
            u(i,j)=s1*f1(i)+k*g1(i)+r2*(f1(i+1)+f1(i-1))
        else
            u(i,j)=s2*u(i,j-1)+r1*u(i-1,j-1)+u(i+1,j-1)-u(i,j-2)
        end
        
    end
end
for i=1:n
    printf('\n %i\t',i)
    for j=1:m
        printf('\t%.3f',u(i,j))
    end
end