//Example 5.40
//Newton Raphson Method
//Page no. 206
clc;clear;close;
deff('y=f(F)','y=-10*F^3-21*F+10')
deff('y=f1(F)','y=-21-30*F^2')
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=1;e=0.00001
for i=1:10
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.6f\t%.5f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\t\t\t\t\t2\n Therefore, Magnetic Flux = %.5f Wb m',x1)