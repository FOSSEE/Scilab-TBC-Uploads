clc
//finite difference method
disp("the solution of eg 5.1-->Discretization in 1-D space");
//given d2y_by_dx2-2=0 hence it is dirichlet's problem

x_1=0, y_1=0               //initial boundary conditions
x_3=1, y_3=0

delta_x=.5                //since we have to find y_2 at x=.5 so x_2=.5 
//in the central difference method substituting i=2 we have
//(y_3-2*y_2+y_1)/(delta_x)^2=2
//since y_1 & y_3=0 as per B.C.
y_2=(y_3+y_1-2*delta_x^2)/2
disp(y_2,"the value of y at x=.5 from finite difference method is");
x=.5
y_exact=x^2-x
disp(y_exact,"the value of y from exact soln at x=.5 is");