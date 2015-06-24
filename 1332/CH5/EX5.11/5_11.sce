//Example 5.11
//Newton Raphson Method
//Page no. 167
clc;clear;close;
deff('x=f(x)','x=x^3-x-3')
deff('x=f1(x)','x=3*x^2-1')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=0;e=0.00001
for i=1:11
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, it is cyclic in nature')