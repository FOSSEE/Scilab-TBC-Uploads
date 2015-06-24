//Example 5.38
//Newton Raphson Method
//Page no. 205
clc;clear;close;
deff('y=f(p)','y=p^3-9*p^2+33*p-65')
deff('y=f1(p)','y=3*p^2-18*p+33')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=6;e=0.00001
for i=1:10
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, Market Price at equilibrium = Rs. %.f',x1)