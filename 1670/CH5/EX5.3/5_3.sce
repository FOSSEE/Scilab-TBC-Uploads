//Example 5.3
//Factorial Notation Method
//Page no. 131
clc;close;clear;

h=0.00000001;h1=0000000.1
deff('y=f(x)','y=x^3-2*x^2+x-1')
deff('y=f1(x)','y=x*(x-1)*(x-2)')
deff('y=f2(x)','y=x*(x-1)')
for i=0:2
    A(i+1,1)=f2(i);
    A(i+1,2)=i;
    A(i+1,3)=1
    B(i+1,1)=f(i)-f1(i)
end
x=poly(0,'x')
C=inv(A)*B
disp(C(3),'+',C(2)*x,'+',C(1)*f2(x),'+',f(x))
printf('\n\nf(x) = ')
deff('y=f3(x)','y=C(3)+C(2)*x+C(1)*f2(x)+f(x)')
disp(f3(x))
deff('y=f4(x)','y=(f3(x+h)-f3(x))/h')   //1st derivative
disp(f4(x),'dx = ')
deff('y=f5(x)','y=(f4(x+h1)-f4(x))/h1')   //2nd derivative
disp(f5(x),'d2x = ')
deff('y=f6(x)','y=(f5(x+h1)-f5(x))/h1')   //3rd derivative
disp(f6(x),'d3x = ')
deff('y=f7(x)','y=(f6(x+h1)-f6(x))/h1')   //4th derivative
disp(f7(x),'d4x = ')