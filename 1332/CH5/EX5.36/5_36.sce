//Example 5.36
//Secant Method
//Page no. 204
clc;clear;close;
a=8670;c=10^-8;t2=1.4*10^-4;
deff('x=f(x)','x=-t2+log((1-2*x/a)/(2-x/a))*(a*x*c)/(a+x)')

printf('n\txn\t\tf(xn)\t\tXn+1\t\tf(Xn+1)\t\tXn+2\t\tError\n')
printf('----------------------------------------------------------------------------------------------------------\n')
x0=20000;x1=25000;e=0.00001
for i=1:8
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0))
    e1=abs(x0-x2)
    printf(' %i\t%f\t%.10f\t%f\t%.10f\t%f\t%.10f\n',i-1,x0,f(x0),x1,f(x1),x2,e1)
    x0=x1;
    x1=x2
    if abs(x0)<e then
        break;
    end
end
printf('\n\nTherefore, Rb = %.10f ohm',x2)