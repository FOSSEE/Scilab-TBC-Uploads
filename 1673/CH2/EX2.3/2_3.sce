//example 2.3
//bisection method
//page 26
clc;clear;close;
deff('y=f(x)','y=x^3+x^2+x+7');
x1=-3,x2=-2;//f(-3) is negative and f(-2) is positive
d=0.0001;//for accuracy of root
c=1;
printf('Succesive approximations \t   x1\t   \tx2\t   \tm\t   \tf(m)\n');
while abs(x1-x2)>d
    m=(x1+x2)/2;
printf('                          \t%f\t%f\t%f\t%f\n',x1,x2,m,f(m));
    if f(m)*f(x1)>0
        x1=m;
    else
        x2=m; 
end
c=c+1;// to count number of iterations 
end
printf('the solution of equation after %i iteration is %0.4g',c,m)