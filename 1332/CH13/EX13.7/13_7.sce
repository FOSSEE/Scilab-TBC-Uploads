//Example 13.7
//Richardson Extrapolation
//Page no. 431
clc;close;clear;

deff('y=f(x)','y=exp(2*x)')
e=10^-4;h=0.8;
D1=0;
for i=1:4
    printf('\n')
    for j=1:i
        if j==1 then
            D(i,j)=(f(h)-f(-h))/(2*h)
        else
            D(i,j)=D(i,j-1)+(D(i,j-1)-D(i-1,j-1))/(2^(2*(j-1))-1)
        end
        printf('%g\t\t',D(i,j))
    end
    h=h/2
end
printf('\n\n\t\t\t\t\t\t  2x\nHence, the derivative of the function y = f(x) = e   at x=0 is D(3,3) = %g',D(i,j))
