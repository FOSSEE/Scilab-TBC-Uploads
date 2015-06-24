//Example 6.8
//Parabola Best Fit
//Page no. 223
clc;close;clear;

x=[0.78,1.56,2.34,3.12,3.81]
y=[2.5,1.2,1.12,2.25,4.28]
n=1;
for i=1:5
    x(i)=(x(i)-2.34)/0.78
end
printf('\t\t 2\t 3\t 4\t\t\t 2\n n\tX\tX\tX\tX\ty\tXy\tX y\n----------------------------------------------------------------\n')
x1=0;x2=0;x3=0;x4=0;x5=0;x6=0;x7=0;x8=0;
for i=1:5
    printf(' %.2g\t%.2g\t%.2g\t%.2g\t%.2g\t%.2g\t%.2g\t%.2g\n',n,x(i),x(i)^2,x(i)^3,x(i)^4,y(i),y(i)*x(i),x(i)^2*y(i))
    x1=x1+n;
    x2=x2+x(i);
    x3=x3+x(i)^2;
    x4=x4+x(i)^3;
    x5=x5+x(i)^4;
    x6=x6+y(i);
    x7=x7+y(i)*x(i);
    x8=x8+x(i)^2*y(i)
end
printf('----------------------------------------------------------------\n %.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\t%.2f\n',x1,x2,x3,x4,x5,x6,x7,x8)
A=[x1,x2,x3;x2,x3,x4;x3,x4,x5]
B=[x6;x7;x8]
C=inv(A)*B;
disp(C)
x=poly(0,'X')
y=C(1)+C(2)*x+C(3)*x^2
disp(y,'y =')