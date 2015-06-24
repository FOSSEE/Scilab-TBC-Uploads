//Example 10.39
//Finite Difference Method
//Page no. 355
clc;close;clear;

h=0.25;
y(1)=0;
deff('y=f2(x,y)','y=x+y')
for i=1:3
    x(i)=i*h
end
A=[0,1,0;1,0,1;0,1,0]
j=1;
for i=1:3
    A(i,i)=-(2+64*h^2)
end
for i=1:3
    B(i,1)=-10*h^2
    printf('\ny%i %gy%i + y%i = %g\n',i-1,A(i,i),i,i+1,B(i,1))
end
C=inv(A)*B;
printf('\n\n')
for i=1:3
    printf('\ny%i = %g\n',i,C(i))
end