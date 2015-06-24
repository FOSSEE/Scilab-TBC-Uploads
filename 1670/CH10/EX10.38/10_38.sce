//Example 10.38
//Finite Difference Method
//Page no. 354
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
    A(i,i)=-(2-h^2*x(i)^2)
end
for i=1:3
    B(i,1)=0
    if i==3 then
        B(3,1)=-1
    end
    printf('\ny%i %gy%i + y%i = %g\n',i-1,A(i,i),i,i+1,B(i,1))
end
C=inv(A)*B;
printf('\n\n')
for i=1:3
    printf('\ny%i = %g\n',i,C(i))
end