//Example 5.1
//Bisection Method
//Page no. 145
clc;clear;close;
deff('y=f(x)','y=2^x-3*x')
x1=0;x2=2;e=0.001;i=0;
printf('Iteration\tx1\t\tx2\t\tz\t\tf(z)\n')
printf('--------------------------------------------------------------------------\n')
while abs(x1-x2)>e
    z=(x1+x2)/2
    printf('     %i\t\t%f\t%f\t%f\t%f\n',i,x1,x2,z,f(z))
    if f(z)*f(x1)>0
        x1=z
    else
        x2=z
    end
    i=i+1
end
printf('\n\nThe solution of this equation is %g after %i Iterations',z,i-1)