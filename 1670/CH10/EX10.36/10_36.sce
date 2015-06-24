//Example 10.36
//Finite Difference Method
//Page no. 353
clc;close;clear;

h=0.2;
y(1)=0;
deff('y=f2(x,y)','y=x+y')
for i=1:4
    x(i)=i*h
end
for i=1:4
    B(i,1)=h^2*x(i)
    if i==4 then
        B(4,1)=1-B(4,1)
    end
    printf('\ny%i - 2.04y%i + y%i = %g\n',i-1,i,i+1,B(i,1))
end
A=[-2-h^2,1,0,0;1,-2-h^2,1,0;0,1,-2-h^2,1;0,0,1,-2-h^2]
C=inv(A)*B;
printf('\n\n')
for i=1:4
    printf('\ny%i = %g\n',i,C(i))
end