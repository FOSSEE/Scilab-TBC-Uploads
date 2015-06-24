//Example 5.6
//Linear Iterative Method
//Page no. 159
clc;clear;close;
deff('x=f(x)','x=1+sin(x)/10')
printf('n\tx\t\tf(x)\n')
printf('-------------------------------------\n')
x=0;
for i=1:7
    printf(' %i\t%.10f\t%.10f\n',i,x,f(x))
    x=f(x);
end
printf('\n\nThe solution of this equation after %i Iterations is %.10f',i,x)