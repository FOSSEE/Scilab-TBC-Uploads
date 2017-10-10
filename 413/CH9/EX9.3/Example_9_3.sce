clc
clear
printf('Solve the equation y''+y=3X^2, with boundary points (0,0) and (2, 3.5)')
printf('\nCompare computed value form The Galerkin Method vs Analytic result')
P=0
X(1,1)=0
for i=1:20
    X(1,i+1)=0.1+P
    P=X(1,i+1)
end
for i=1:21
    A(1,i)=(101/152).*X(1,i).*X(1,i).*X(1,i)-(103/228)*X(1,i).*X(1,i)+(1/228)*X(1,i)
B(1,i)=6*cos(X(1,i))+3*(X(1,i).*X(1,i)-2)
T=[X(1,i), B(1,i), A(1,i), B(1,i)-A(1,i)]
disp(T)
end