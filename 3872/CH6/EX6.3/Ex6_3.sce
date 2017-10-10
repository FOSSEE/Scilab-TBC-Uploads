//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.3
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

A=[10 5;2 9];          //Coefficients of variables in matrix form
y=[6;3];               //Constant coefficients in matrix form
tol=1e-4;              //Tolerance value
x=[0;0]

D=[A(1,1) 0;0 A(2,2)];     //Matrix containing the diagonal elements of A
M=inv(D)*(D-A);

err=1;
iter=0;

while err>tol
    temp=x;
    x=M*x+inv(D)*y;
    if temp(1) ~= 0 | temp(2) ~= 0
    err=max(abs((x(1)-temp(1))/temp(1)),abs((x(2)-temp(2))/temp(2)));
    end
    iter=iter+1;    
end

printf('The convergence criterion is satisfied at the %dth iteration\n',iter)
printf('The solution is x1=%.4f and x2=%.4f',x(1),x(2))
