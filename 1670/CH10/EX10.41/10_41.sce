//Example 10.41
//Eigenvalue Priblem
//Page no. 359
clc;close;clear;

h=0.25;
y(1)=0;
l=poly(0,'lbd')
deff('y=f2(x,y)','y=x+y')
for i=1:3
    x(i)=i*h
end
A=[0,1,0;1,0,1;0,1,0]
j=1;
for i=1:3
    A(i,i)=-(2-l*h^2)
end
for i=1:3
    B(i,1)=0
    printf('\ny%i -(2-0.0625*lbd)y%i + y%i = %g\n',i-1,i,i+1,B(i,1))
end
disp(A)
disp(det(A),"Determinant of A =")
disp(roots(det(A)),"Roots = ")
a=roots(det(A))
disp(a(3),"Minimum Value =")