//Example 2.8
//Newton Raphson Method
//Page no. 21
clc;clear;close;
deff('x=f(x)','x=x^4-3*x^3+2*x^2+2*x-7')
deff('x=f1(x)','x=4*x^3-9*x^2+4*x+2')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=2.1;e=0.00001
for i=1:6
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, this is convergent and root = %.8f',x0)