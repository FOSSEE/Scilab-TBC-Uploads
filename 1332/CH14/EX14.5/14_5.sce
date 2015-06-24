//Example 14.5
//Romberg Method
//Page no. 457
clc;close;clear;

deff('y=f(x)','y=1/(1+x)')

h=[0.5,0.25,0.125]
for k=1:3
    for i=0:h(k):1
        x(i/h(k)+1)=i;
        y(i/h(k)+1)=f(x(i/h(k)+1))
    end
    n=1+(1/h(k))
    //trapezoidal rule
    S=0;
     for i=1:n
        if(i==1 | i==n)
            S=S+y(i)
        else
            S=S+2*y(i)
        end
    end
    S=S*h(k)/2
    printf('\n\nI(%g) = %g',h(k),S)
    z(2*k-1,1)=S
end
for i=2:3
    for k=1:4-i
    z(k*2+i-2,i)=z(2*k-1+i,i-1)+(z(2*k-1+i,i-1)-z(2*k-3+i,i-1))/3
end
end

printf('\n\n')
disp(z,'The Table of values:')