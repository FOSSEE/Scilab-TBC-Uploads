//Example 2.12
//Iteration Formula
//Page no. 28
clc;clear;close;
deff('x=f(x)','x=1/sqrt(1+x)')
printf('n\txn\t\t\f(xn)\t\tXn+1\t\tError\n')
printf('---------------------------------------------------------------------------\n')
x0=0.75;e=0.00001
for i=1:8
    x1=f(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, the root is %.6f',x0)