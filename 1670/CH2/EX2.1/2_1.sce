//Example 2.1
//Bisection Method
//Page no. 14
clc;clear;close;
deff('y=f(x)','y=x^3+x^2-1')
x1=0.5;x2=1;e=0.0001;i=0;
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