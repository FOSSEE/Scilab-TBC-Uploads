//method of iteration
//example 2.31
//page 62
clc;clear;close;
deff('x=f(x,y)','(3*y*x^2+7)/10');
deff('y=g(x,y)','(y^2+4)/5');
h=0.0001;
x0=0.5;y0=0.5;
f1_dx=(f(x0+h,y0)-f(x0,y0))/h;
f1_dy=(f(x0,y0+h)-f(x0,y0))/h;
g1_dx=(g(x0+h,y0)-g(x0,y0))/h;
g1_dy=(g(x0+h,y0)-g(x0,y0))/h;
if f1_dx+f1_dy<1 & g1_dx+g1_dy<1  then
    printf('coditions for convergence is satisfied\n\n' )
end
printf( ' X\t         Y\t\n\n');
for i=1:10
    X=(3*y0*x0^2+7)/10;
    Y=(y0^2+4)/5;
    printf('%f\t       %f\t\n',X,Y);
    x0=X;y0=Y;
end
printf('\n\n CONVERGENCE AT (1 1) IS OBVIOUS');

