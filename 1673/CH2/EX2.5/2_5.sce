//example 2.5
//bisection method
//page 27
clc;clear;close;
deff('y=f(x)','y=4*exp(-x)*sin(x)-1');
x1=0,x2=0.5;//f(0) is negative and f(1) is positive
d=0.0001;//for accuracy of root
c=1;
printf('Succesive approximations \t   x1\t   \tx2\t   \tm\t   \t    \tf(m)\n');
while abs(x2-x1)>d
    m=(x1+x2)/2;
printf('                          \t%f\t%f\t%f\t%f\n',x1,x2,m,f(m));
    if f(m)*f(x1)>0
        x1=m;
    else
        x2=m; 
end
c=c+1;// to count number of iterations 
end
printf('the solution of equation after %i iteration is %0.3g',c,m)