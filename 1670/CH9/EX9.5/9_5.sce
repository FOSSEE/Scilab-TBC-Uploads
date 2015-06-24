//Example 9.5
//Difference Equation
//Page no. 291
clc;clear;close;

y(1)=1.5;y(2)=3;
n=poly(0,'n')
x=poly(0,'x')
f=x^2-2*x+1;
disp(f)
x=roots(f)
disp(x,"x = ")
A=[1,1;1,2];
B=[y(1);y(2)]
C=inv(A)*B
for i=1:2
    printf('\nc(%i) = %g\n',i,C(i))
end
yn=C(1)+C(2)*n
disp(yn,"yn = ")