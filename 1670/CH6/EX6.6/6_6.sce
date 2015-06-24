//Example 6.6
//Least Square Method
//Page no. 221
clc;close;clear;

x=[2,3,4,5];
y=[27.8,62.1,110,161];
printf('\t 2\t 4\t\t  2\nx\tx\tx\ty\tyx\n----------------------------------------\n')
x1=0;x2=0;
for i=1:4
    printf(' %g\t%g\t%g\t%g\t%g\n',x(i),x(i)^2,x(i)^4,y(i),y(i)*x(i)^2)
    x1=x1+x(i)^4;
    x2=x2+y(i)*x(i)^2;
end
printf('----------------------------------------\n \t\t%g\t\t%g\n',x1,x2)
a=x2/x1;
x1=poly(0,'x')
disp(a*x1^2,'y = ')