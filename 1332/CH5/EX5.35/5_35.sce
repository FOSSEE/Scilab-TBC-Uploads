//Example 5.35
//Newton Raphson Method
//Page no. 203
clc;clear;close;
deff('x=f(x)','x=x^3-30*x^2+2552')
deff('x=f1(x)','x=3*x^2-60*x')
//newton raphson
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=10;e=0.00001
for i=1:4
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nThus the ball is submerged upto height of %.10f cm\n\n\n',x1)