//Example 5.5
//General Iterative Method
//Page no. 154
clc;clear;close;
deff('x=f(x)','x=sqrt(3+5/x)')
printf('n\tx\t\tf(x)\n')
printf('------------------------------------\n')
x=2;
for i=1:8
    printf(' %i\t%.10f\t%.10f\n',i,x,f(x))
    x=f(x);
end
printf('\n\nThe solution of this equation after %i Iterations is %.10f',i,x)