//Example 6.12
//Least Square Fit
//Page no. 224
clc;close;clear;

x=[10,20,30,40,50]
y=[8,10,15,21,30]
n=1;
printf('\t\t 2\t 4\t\t\t 2\n n\tx\tx\tx\t\ty\tx y\n----------------------------------------------------------------\n')
x1=0;x2=0;x3=0;x4=0;x5=0;x6=0;x7=0;x8=0;
for i=1:5
    printf(' %g\t%g\t%g\t%.9g\t\t%g\t%g\n',n,x(i),x(i)^2,x(i)^4,y(i),x(i)^2*y(i))
    x1=x1+n;
    x2=x2+x(i);
    x3=x3+x(i)^2;
    x4=x4+x(i)^4;
    x5=x5+y(i);
    x6=x6+x(i)^2*y(i)
end
printf('----------------------------------------------------------------\n %g\t%g\t%g\t%.9g\t\t%g\t%g\n',x1,x2,x3,x4,x5,x6)
A=[x1,x3;x3,x4;]
B=[x5;x6]
C=inv(A)*B;
disp(C)
x=poly(0,'x')
y=C(1)+C(2)*x^2
disp(y,'y =')