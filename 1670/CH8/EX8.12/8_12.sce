//Example 8.12
//Euler Maclaurin Methods
//Page no 278
clc;clear;close;

a=0;b=1;h=[0.5,0.25]
h1=[6,360,15120]
for j=1:2
    n=(b-a)/h(j)+1
    for i=1:n
        x(i)=(i-1)*h(j)
        y(i)=sin(%pi*x(i))
    end
    printf('\n x = \t')
    for i=1:n
        printf('\t%g',x(i))
    end
    printf('\n f(x) = \t')
    for i=1:n
        printf('%.4f\t',y(i))
    end
    s=0;
    for i=0:2
        s=s+((-1)^i)*(%pi^(2*i+1))*(h(j)^(2*(i+1)))/h1(i+1)
    end
    for i=1:n
        if i==1 | i==n then
            s=s+y(i)*(h(j))/2
        else
            s=s+2*y(i)*(h(j))/2
        end
    end
    printf('\n\nI = %g\n\n\n',s)
end