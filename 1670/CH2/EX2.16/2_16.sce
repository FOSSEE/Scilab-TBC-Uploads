//Example 2.16
//Newton Raphshon Method
//Page no. 31
clc;clear;close;
h=0.001
deff('x=f(x)','x=x^3-5*x^2+8*x-4')
deff('x=f1(x)','x=(f(x+h)-f(x))/h')
deff('x=f2(x)','x=(f1(x+h)-f1(x))/h')
printf('n\txn\t\t\f(xn)\t\tXn+1\t\tError\n')
printf('---------------------------------------------------------------------------\n')
x0=1.8;e=0.00001
for i=1:10
    x1=x0-2*f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, the root is %.4f\n\n\n\n',x0)