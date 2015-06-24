//Example 2.6
//Secant Method
//Page no. 19
clc;clear;close;
deff('x=f(x)','x=cos(x)-x*exp(x)')
deff('x=f1(x)','x=-sin(x)-exp(x)-x*exp(x)')
printf('n\txn\t\tf(xn)\t\tXn+1\t\tf(Xn+1)\t\tXn+2\t\tError\n')
printf('----------------------------------------------------------------------------------------------------------\n')
x0=0;x1=1;e=0.00001
for i=1:6
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0))
    e1=abs(x0-x2)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),x1,f(x1),x2,e1)
    x0=x1;
    x1=x2
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, the root is %.4f correct upto 4 decimal places',x2)