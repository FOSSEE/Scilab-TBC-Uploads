//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 6 ; Example 6.7
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

c=[15;50];                       //Constant coefficients in the equations
x=[4;9];                         //Initial values for x1 and x2

err=1;                           //Initialization of error value
tol=1e-4;                        //Tolerance value for Newton Raphson method
iter=0;                          //Initialization of iteration value

while err>tol
    temp=x;
    f=[x(1)+x(2);x(1)*x(2)]              //Function Value
    J=[1 1;x(2) x(1)];               //Jacobian Matrix
    x=x+inv(J)*(c-f)
    err=max(abs((x(1)-temp(1))/temp(1)),abs((x(2)-temp(2))/temp(2)));
    iter=iter+1;    
end
printf('The convergence criterion is satisfied at the %dth iteration\n',iter)
printf('The solution is x1=%.4f and x2=%.4f',x(1),x(2))
