//Example 5.12
//Newton Raphson Method
//Page no. 168
clc;clear;close;
deff('x=f(x)','x=atan(x)')
deff('x=f1(x)','x=1/(1+x^2)')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=1.45;e=0.00001
for i=1:12
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.5g   \t\t%.5g\t\t%.5g \t\t%.5g \t\t%.5g\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, it is divergent')