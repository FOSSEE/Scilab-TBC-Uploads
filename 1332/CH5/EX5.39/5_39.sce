//Example 5.39
//Newton Raphson Method
//Page no. 205
clc;clear;close;
deff('y=f(v)','y=v^3-20*v+30')
deff('y=f1(v)','y=3*v^2-20')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=10;e=0.00001
for i=1:10
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, sides are  = %.5f m x %.5f m x %.5f m',x1,x1,20/x1^2)