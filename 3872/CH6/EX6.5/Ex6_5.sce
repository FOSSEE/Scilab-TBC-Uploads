//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.5
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

A=[5 10;9 2];          //Coefficients of variables in matrix form
y=[6;3];               //Constant coefficients in matrix form
tol=1e-4;              //Tolerance value
x=[0;0]

//Solution by matrix inversion

xm=inv(A)*y;

//Solution using Gauss–Seidel method

D=[A(1,1) 0;A(2,1) A(2,2)];     //Matrix containing the lower triangular elements of A
M=inv(D)*(D-A);

err=1;
iter=0;

while err>tol
    temp=x;
    x=M*x+inv(D)*y;
    if temp(1) ~=0 | temp(2) ~= 0
    err=max(abs((x(1)-temp(1))/temp(1)),abs((x(2)-temp(2))/temp(2)));
    end
    iter=iter+1;    
end

printf('The solution using matrix inversion is x1=%.4f and x2=%.4f\n\n',xm(1),xm(2))
printf('Soultion using Gauss-Seidal approach:\n')
if isnan(err)
    printf('The convergence criterion is not reached.The solution diverges\n')
else
    printf('The convergence criterion is satisfied at the %dth iteration\n',iter)
    printf('The solution is x1=%.4f and x2=%.4f',x(1),x(2))
end

