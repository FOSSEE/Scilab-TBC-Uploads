//Example 5.27
//Linear Iteration Method
//Page no. 198
clc;clear;close;

deff('x=f(x)','x=20/(x^2+2*x+10)')
printf('n\tx\t\tf(x)\n')
printf('-------------------------------------\n')
x=1;
for i=1:19
    printf(' %i\t%.10f\t%.10f\n',i,x,f(x))
    x1=x;
    x=f(x);
end
printf('\n\nx = %.10f',x1)