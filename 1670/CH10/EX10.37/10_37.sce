//Example 10.37
//Finite Difference Method
//Page no. 354
clc;close;clear;

h=0.2;
y(1)=1;y(2)=1;
deff('y=f2(x,y)','y=x+y')
for i=1:4
    x(i)=i*h
end
A=[0,1,0,0;1,0,1,0;0,1,0,1;0,0,1,0]
j=1;
for i=1:4
    A(i,i)=-(1.96+2*x(i)^2)/(1+x(i)^2)
end
for i=1:4
    B(i,1)=7*h^2*x(i)
    if i==4 then
        B(4,1)=2-B(4,1)
    end
    printf('\ny%i %gy%i + y%i = %g\n',i-1,A(i,i),i,i+1,B(i,1))
end
C=inv(A)*B;
printf('\n\n')
for i=1:4
    printf('\ny%i = %g\n',i,C(i))
end