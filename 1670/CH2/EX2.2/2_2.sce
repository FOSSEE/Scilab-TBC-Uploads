//Example 2.2
//Bisection Method
//Page no. 15
clc;clear;close;
deff('y=f(x)','y=x^3-3*x-5')
x1=2;x2=2.5;e=0.0001;i=0;
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
printf('\n\nThe solution of this equation is %.4g after %i Iterations',z,i-1)